//
//  BlahClass.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/16.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation
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
