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

}

