//
//  Nibable.swift
//  base
//
//  Created by asiaquest on 2017/09/13.
//  Copyright © 2017年 asiaquest. All rights reserved.
//

import Foundation
import UIKit

protocol Nibable: NSObjectProtocol {
    static var nibName: String { get }
    static var nib: UINib { get }
}

extension Nibable {
    static var nibName: String {
        return className
    }
    static var nib: UINib {
        return UINib(nibName: nibName, bundle: Bundle(for: Self.self))
    }
}
