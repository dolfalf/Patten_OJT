//
//  ObserverPattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/12.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

//オブザーバーパターン(observer pattern)はオブジェクトのちょし状態変化をオブザーブするオブザーバー。
//つまり、オブザーバーたちの目録をオブジェクトに登録して状態の変化がある時ごとメソッドなどを通じて直接目録の各オブザーバーに通知するようにするデザインパターン

// 各オブザーバーを登録及び解除できるプロトコル生成
protocol Observable {
    func addObserver(_ observer: Observer)
    func removeObserver(_ observer: Observer)
}
protocol Observer: class {
    func update(_ temp: Float, density: Float)
}

// オブザーバー登録及び解除を実際に担当するクラス生成
class Observation: Observable {
    var observers = [Observer]()
    
    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: Observer) {
        observers = observers.filter({ $0 !== observer })
    }
}

//  微細ホコリの濃度を測定してアラームを送るクラス
class DustMeter: Observation {
    var temperature: Float = 0.0
    var density: Float = 0.0
    
    func notify() {
        for observer in observers {
            observer.update(temperature, density: density)
        }
    }
}

// 微細ホコリの濃度の状態をアラームもらえるユーザー
class Subscriber: Observer {
    var name: String = ""
    
    func update(_ temp: Float, density: Float) {
        print("name: \(name), temp:\(temp), density:\(density)")
    }
    
    init(name: String) {
        self.name = name
    }
    
}
