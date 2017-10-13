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

    // オブザーバー
    let dustMeter = DustMeter()
    override func viewDidLoad() {
        super.viewDidLoad()
        // オブザーバー
        let user1 = Subscriber(name: "Tom")
        let user2 = Subscriber(name: "Sam")
        let _ = Subscriber(name: "Kim")
        // アラームをもらうユーザー追加
        dustMeter.addObserver(user1)
        dustMeter.addObserver(user2)
        // アラームをもうもらわないユーザー
        dustMeter.removeObserver(user1)
        
        // FactoryPattern
        let factorys = Factorys()
        var unit = factorys.createUnit(type: .siege)
        unit.action()
        
        let cc = CustomClass()
    }
    
}

extension ViewController {
    @IBAction func clickedButton() {
        dustMeter.temperature = 32
        dustMeter.density = 80
        dustMeter.notify()
    }

}

