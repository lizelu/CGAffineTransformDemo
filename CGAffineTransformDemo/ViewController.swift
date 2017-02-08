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
    }

    @IBAction func changeLeftOrRightSlider(_ sender: UISlider) {
        testImageView.transform = CGAffineTransform(translationX: CGFloat(leftAndRightSlider.value), y: CGFloat(-upAndDownSlider.value))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

