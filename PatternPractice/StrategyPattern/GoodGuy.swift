//
//  Content.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/16.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

// 参考サイト：https://medium.com/design-patterns-in-swift/design-patterns-in-swift-strategy-pattern-1d11945b4adc
import Foundation

class GoodGuy {
    
    private var characerState: CharacterState?
    
    func setState(cs: CharacterState) {
        self.characerState = cs
        characerState!.enterState()
    }
}

