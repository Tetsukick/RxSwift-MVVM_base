//
//  NSObjectProtocol+.swift
//  base
//
//  Created by asiaquest on 2017/09/12.
//  Copyright © 2017年 asiaquest. All rights reserved.
//

import UIKit
import Foundation

extension NSObjectProtocol {
    static var className: String {
        return String(describing: self)
    }
}
