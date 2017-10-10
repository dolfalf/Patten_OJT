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

// plusOne.delegate = myObject
// plusOne.value = 5
// MyClass value = 6

//-------------------------------------------
// Optional Protocolを使用するには＠objcを付ける。
@objc protocol BlahProtocol {
    @objc func blah(_ blahObject: BlahClass)
    
    //Optionalメソッドは前にoptionalを付ける。
    @objc optional func blahBlah(_ blasObject: BlahClass, whyBlahBlah: String)
}


// BlahClassの中で特殊な場合、プロトコルを使うクラス。
@objc class BlahClass: NSObject {
    var delegate: BlahProtocol?
    
    func something() {
        self.delegate?.blah(self)
    }
    
    //オプショナルだから、無いかも知れない。
    //それで、オプショナルタイプにチェーンをする。
    func somthingAnother() {
        self.delegate?.blahBlah?(self, whyBlahBlah: "Who am I?")
    }
}

class CustomClass: BlahProtocol {
    let blah = BlahClass()
    
    init() {
        self.blah.delegate = self
        self.blah.something()
        self.blah.somthingAnother()
    }
    
    func blah(_ blahObject: BlahClass) {
        print("Calling with blah Protocol")
    }
    
    //プロトコルのオプショナルメソッドだから、必ず苦言される必要はない。
    //func blahBlah(_ blasObject: BlahClass, whyBlahBlah: String) {
    //    print("He said = \(whyBlahBlah)")
    //}
}

let cc = CustomClass()



