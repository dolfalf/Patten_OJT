//
//  ViewController.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/03.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var singleton: SingletonPattern = SingletonPattern.sharedInstance
    // var singleton: SingletonPattern = SingletonPattern() // init이 private처리 됐기때문에 직접 인스턴스 생성이 안된다.

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // FactoryPattern Sample
        let factorys = Factorys()
        var unit = factorys.createUnit(type: .siege)
        unit.action()
        
        //DelegatePattern Sample
        var myObject = MyClass()
        
        var plusOne = PlusOneClass()
        
        // OptionalProtocol DelegatePattern Sample
        let cc = CustomClass()
        
        //StrategyPattern Sample
        let goodGuy = GoodGuy()
        
        goodGuy.setState(cs: WalkingState())
        goodGuy.setState(cs: StandingState())
        goodGuy.setState(cs: RunningState())
    
    }
    
}

