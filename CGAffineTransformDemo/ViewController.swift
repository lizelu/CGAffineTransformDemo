//
//  ViewController.swift
//  CGAffineTransformDemo
//
//  Created by Mr.LuDashi on 2017/2/8.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var testImageView: UIImageView!
    @IBOutlet var leftAndRightSlider: UISlider!
    @IBOutlet var upAndDownSlider: UISlider!
    @IBOutlet var xScaleSlider: UISlider!
    @IBOutlet var yScalerSlider: UISlider!
    @IBOutlet var rotationSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.congfigSlider()
    }
    
    func congfigSlider() {
        leftAndRightSlider.minimumValue = -Float(testImageView.width)
        leftAndRightSlider.maximumValue = Float(testImageView.width)
        leftAndRightSlider.value = 0
        
        upAndDownSlider.minimumValue = -Float(testImageView.height)
        upAndDownSlider.maximumValue = Float(testImageView.height)
        upAndDownSlider.value = 0
        
        xScaleSlider.minimumValue = -Float(1)
        xScaleSlider.maximumValue = Float(1)
        xScaleSlider.value = 1
        
        yScalerSlider.minimumValue = -Float(1)
        yScalerSlider.maximumValue = Float(1)
        yScalerSlider.value = 1
        
        rotationSlider.minimumValue = -Float(2 * M_PI)
        rotationSlider.maximumValue = Float(2 * M_PI)
        rotationSlider.value = 0
    }

    @IBAction func changeLeftOrRightSlider(_ sender: UISlider) {
        
        var transform = CGAffineTransform.identity
    
        //平移
        transform = transform.translatedBy(x: CGFloat(leftAndRightSlider.value),
                                           y: CGFloat(-upAndDownSlider.value))
        //缩放
        transform = transform.scaledBy(x: CGFloat(xScaleSlider.value),
                                       y: CGFloat(yScalerSlider.value))
        //旋转
        transform = transform.rotated(by: CGFloat(rotationSlider.value))
        
        testImageView.transform = transform
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

