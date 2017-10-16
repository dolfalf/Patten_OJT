//
//  DustMeter.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/13.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

//  微細ホコリの濃度を測定してアラームを送るクラス
class DustMeter: Observation {
    var temperature: Float = 0.0
    var density: Float = 0.0
    
    func notify() {
        for observer in observers {
            observer.update(temperature, density: density)
        }
    }
}

