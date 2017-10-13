//
//  FactoryPattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/10.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

// Factoryパタンはクラスのインスタンスを作る事をサーブクラスに任せる。
/*
 Factoryパタンを使えば良い場合
 - ラン・タム時、はっきりどんなクラスのインスタンスが生成されるか知れない時。
 - 生成されるインスタンスのクラスが特定クラスのサブクラスだちに置いたい時
 - どんなクラスでヘルパークラスだちをサブクラスに持っていながらそのサブクラスの中の一つのインスタンスを生成してリターンしたい時
 */
protocol Unit{
    func action()
}

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
