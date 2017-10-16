//
//  BlahProtocol.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/16.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

// Optional Protocolを使用するには＠objcを付ける。
@objc protocol BlahProtocol {
    @objc func blah(_ blahObject: BlahClass)
    
    //Optionalメソッドは前にoptionalを付ける。
    @objc optional func blahBlah(_ blasObject: BlahClass, whyBlahBlah: String)
}
