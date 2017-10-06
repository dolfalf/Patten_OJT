//
//  DelegatePattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/06.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//
//Delegate Patternは特定クラスがする事の一部を自分のカスタムクラスで代わりに処理するために使えるパタン。

import Foundation
// プロトコルは「このメソッドやプロパティなどの要求事項で具現して」と命令。
protocol PlusOneProtocol {
    func resultOfPlusOne(value: Int)
}

class PlusOneClass {
    var delegate: PlusOneProtocol?
    
    var value: Int {
        set {
            // プロトコルに明治されたメソッドコール（委任される）
            self.delegate?.resultOfPlusOne(value: newValue + 1)
        }
        get {
            return 0
        }
    }
}

class MyClass: PlusOneProtocol {
    // プルトコルの関数の具現(委任者)
    func resultOfPlusOne(value: Int) {
        print("MyClass value = \(value)")
    }
}

var myObject = MyClass()

var plusOne = PlusOneClass()

plusOne.delegate = myObject
plusOne.value = 5
// MyClass value = 6


