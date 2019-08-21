//
//  RxSwift+FilterNil.swift
//  kimibasho
//
//  Created by アジアクエスト株式会社 on 2017/06/12.
//  Copyright © 2017年 AsiaQuest,Inc. All rights reserved.
//

import Foundation
import RxSwift

protocol OptionalType {
    associatedtype Wrapped
    var value: Wrapped? { get }
}

extension Optional: OptionalType {
    var value: Wrapped? {
        return self
    }
}

extension Observable where Element: OptionalType {
    
    func filterNil() -> Observable<Element.Wrapped> {
        return flatMap { (element) -> Observable<Element.Wrapped> in
            if let value = element.value {
                return .just(value)
            } else {
                return .empty()
            }
        }
    }
}
