//
//  Subscriber.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/13.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

protocol Observer: class {
    func update(_ temp: Float, density: Float)
}

