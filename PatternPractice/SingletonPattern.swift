//
//  SingletonPattern.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/03.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

class SingletonPattern {
    static let sharedInstance = SingletonPattern()
    private init() { //Init()을 private처리해서 외부에서 인스턴스를 만들 수 있는 것을 봉쇄하여 sharedInstance를 통해서만 만들 수 있게 함.
        
    }
}
/*
 Swift에서 static let으로 선언하면 기본적으로 lazy(지연)되어 thread-safe하므로 별도의 *dispatch_once_t 같은 처리를 해주지 않아도 된다.
 그리고 lazy되면 인스턴스가 만들어지기 전까진 메모리에 들어가지 않아 메모리를 관리할 수 있다.
 
 *dispatch_once_t : Objective-C에서 thread-safe하도록 하기 위해 사용하는 것임.
 
 */
