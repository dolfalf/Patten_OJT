//
//  CustomClass.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/13.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

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
