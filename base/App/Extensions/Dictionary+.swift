//
//  Dictionary+.swift
//  kimibasho
//
//  Created by アジアクエスト株式会社 on 2017/07/05.
//  Copyright © 2017年 AsiaQuest,Inc. All rights reserved.
//

import Foundation

extension Dictionary {
    
    func union(other: Dictionary?) -> Dictionary {
        guard let otherDic = other else { return self }
        var tmp = self
        otherDic.forEach { tmp[$0.0] = $0.1 }
        return tmp
    }
}
