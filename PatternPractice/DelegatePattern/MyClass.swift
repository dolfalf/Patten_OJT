//
//  MyClass.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/16.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

class MyClass: PlusOneProtocol {
    // プルトコルの関数の具現(委任者)
    func resultOfPlusOne(value: Int) {
        print("MyClass value = \(value)")
    }
}
