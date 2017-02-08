//
//  CEViewExtension.swift
//  CEExtension-Swift
//
//  Created by Mr.LuDashi on 2017/1/20.
//  Copyright © 2017年 ZeluLi. All rights reserved.
//

import UIKit
extension UIView {
    
    /// View的X坐标
    var x : CGFloat {
        get {
            return frame.origin.x
        }
        
        set(value) {
            var tmpFrame = frame
            tmpFrame.origin.x = value
            frame = tmpFrame
        }
    }
    
    /// View的Y坐标
    var y : CGFloat {
        get {
            return frame.origin.y
        }
        
        set(value) {
            var tmpFrame : CGRect = frame
            tmpFrame.origin.y = value
            frame = tmpFrame
        }
    }
    
    /// View的高
    var height : CGFloat {
        get {
            return frame.size.height
        }
        
        set(value) {
            var tmpFrame = frame
            tmpFrame.size.height = value
            frame = tmpFrame
        }
    }
    
    /// View的宽
    var width : CGFloat {
        get {
            return frame.size.width
        }
        
        set(value) {
            var tmpFrame : CGRect = frame
            tmpFrame.size.width   = value
            frame                 = tmpFrame
        }
    }
    
    /// 左
    var left : CGFloat {
        get {
            return x
        }
    }
    
    /// 右
    var right : CGFloat {
        get {
            guard self.superview != nil else {
                 return x + width
            }
            return (superview?.width)! - (x + width)
        }
    }
    
    /// 上
    var top : CGFloat {
        get {
            return y
        }
    }
    
    /// 下
    var bottom : CGFloat {
        get {
            guard self.superview != nil else {
                return y + height
            }
            return (superview?.height)! - (y + height)
        }
    }
    
    /// 中心X
    var centerX : CGFloat {
        get {
            return center.x
        }
        
        set(value) {
            center = CGPoint(x: value, y: center.y)
        }
    }
    
    /// 中心Y
    var centerY : CGFloat {
        get {
            return center.y
        }
        
        set(value) {
            center = CGPoint(x: center.x, y: value)
        }
    }
    
    /// 宽的一半
    var middleWidth : CGFloat {
        get {
            return width / 2
        }
    }
    
    /// 高的一半
    var middleHeight : CGFloat {
        get {
            return height / 2
        }
    }
    
    /// View的尺寸
    var size : CGSize {
        get {
            return frame.size
        }
        
        set(value) {
            var tmpFrame = frame
            tmpFrame.size = value
            frame = tmpFrame
        }
    }
    
    /// View的坐标点
    var origin : CGPoint {
        get {
            return frame.origin
        }
        
        set(value) {
            var tmpFrame = frame
            tmpFrame.origin = value
            frame = tmpFrame
        }
    }
    
    /// 当前View所在的VC
    var currentViewController: UIViewController? {
        get {
            var superView: UIView? = self
            while superView != nil {
                let nextResponder = superView?.next
                if let vc = nextResponder as? UIViewController {
                    return vc
                }
                superView = superView?.superview
            }
            return nil
        }
    }
    
    /// 移除所有的子视图
    func removeAllSubViews() {
        for subView in self.subviews {
            subView.removeFromSuperview()
        }
    }
}
