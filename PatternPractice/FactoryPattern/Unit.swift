//
//  Unit.swift
//  PatternPractice
//
//  Created by jeon sangjun on 2017/10/16.
//  Copyright © 2017年 jeon sangjun. All rights reserved.
//

import Foundation

// Factoryパタンはクラスのインスタンスを作る事をサーブクラスに任せる。
/*
 Factoryパタンを使えば良い場合
 - ラン・タム時、はっきりどんなクラスのインスタンスが生成されるか知れない時。
 - 生成されるインスタンスのクラスが特定クラスのサブクラスたちに置いたい時
 - どんなクラスでヘルパークラスたちをサブクラスに持っていながらそのサブクラスの中の一つのインスタンスを生成してリターンしたい時
 */
protocol Unit{
    func action()
}
