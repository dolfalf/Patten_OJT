//
//  File.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/13.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

class MyClass: PlusOneProtocol {
    // プルトコルの関数の具現(委任者)
    func resultOfPlusOne(value: Int) {
        print("MyClass value = \(value)")
    }
}

var myObject = MyClass()

var plusOne = PlusOneClass()

// plusOne.delegate = myObject
// plusOne.value = 5
// MyClass value = 6
