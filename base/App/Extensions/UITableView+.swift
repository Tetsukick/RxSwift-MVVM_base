//
//  UITableView+.swift
//  base
//
//  Created by asiaquest on 2017/09/13.
//  Copyright © 2017年 asiaquest. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_ cellType: T.Type) where T: Nibable {
        register(T.nib, forCellReuseIdentifier: T.identifier)
    }
    
    func register<T: UITableViewCell>(_ cellType: T.Type) {
        register(T.self, forCellReuseIdentifier: T.identifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(with cellType: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as! T
    }
}
