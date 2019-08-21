//
//  UIViewController+.swift
//  kimibasho
//
//  Created by アジアクエスト株式会社 on 2017/07/27.
//  Copyright © 2017年 AsiaQuest,Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    class func getTopViewController() -> UIViewController? {
        var topController = UIApplication.shared.keyWindow?.rootViewController
        
        if var tc = topController {
            while tc.presentedViewController != nil {
                if let present = tc.presentedViewController {
                    tc = present
                }
            }
            topController = tc
        }
        return topController
    }
}
