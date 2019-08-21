//
//  Storyboadable.swift
//  base
//
//  Created by asiaquest on 2017/09/13.
//  Copyright © 2017年 asiaquest. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboardable: NSObjectProtocol {
    static var storyboardName: String { get }
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    static var storyboardName: String {
        return className
    }
    
    static func instantiate() -> Self {
        return UIStoryboard(
            name: storyboardName,
            bundle: Bundle(for: Self.self)
            ).instantiateInitialViewController() as! Self
    }
}
