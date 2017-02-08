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
    }

    @IBAction func changeLeftOrRightSlider(_ sender: UISlider) {
        //左右移动
        var transform = CGAffineTransform(translationX: CGFloat(leftAndRightSlider.value), y: CGFloat(-upAndDownSlider.value))
        transform = transform.scaledBy(x: CGFloat(xScaleSlider.value), y: CGFloat(yScalerSlider.value))
        testImageView.transform = transform
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

