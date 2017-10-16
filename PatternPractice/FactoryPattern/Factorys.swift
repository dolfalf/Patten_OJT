//
//  FactoryPattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/10.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

enum UnitType {
    case siege, goliath, vulture
}

// StarCraftのFactoryがデザインパタンのFactoryだと考えられる
class Factorys {
    func createUnit(type: UnitType) -> Unit {
        switch type {
        case .siege:
            return Siege()
        case .goliath:
            return Goliath()
        case .vulture:
            return Vulture()
        }
    }
}
