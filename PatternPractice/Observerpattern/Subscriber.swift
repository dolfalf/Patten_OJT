//
//  Subscriber.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/13.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

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

