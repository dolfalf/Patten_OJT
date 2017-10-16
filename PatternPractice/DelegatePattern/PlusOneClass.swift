//
//  DelegatePattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/06.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//
//Delegate Patternは特定クラスがする事の一部を自分のカスタムクラスで代わりに処理するために使えるパタン。

import Foundation


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




