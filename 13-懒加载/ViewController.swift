//
//  ViewController.swift
//  13-懒加载
//
//  Created by 1 on 16/1/19.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*:
    延迟存储属性
    * 延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用lazy来标示一个延迟存储属性
    最常见的延迟存储属性
    * 执行某个方法返回处理好的数据
    * 执行某个闭包返回处理好的数据
    注意
    * 必须将延迟存储属性声明成变量（使用var关键字），因为属性的初始值可能在实例构造完成之后才会得到。而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性。
    * 如果一个被标记为lazy的属性在没有初始化时就同时被多个线程访问，则无法保证该属性只会被初始化一次
    */
    
    /*
    lazy var listData: [String] = self.test()
    func test() -> [String] {
        print("执行了")
        return ["lmj", "lnj", "zs"]
    }
    */
    /*
    lazy var listData: [String] = {
        ()->[String]
        in
        print("执行了")
        return ["lmj", "lnj", "zs"]
    }()
    */
    /*
    lazy var listData = {
        ()->[String]
        in
        print("执行了")
        return ["lmj", "lnj", "zs"]
    }()
    */
    // 推荐写法
    lazy var listData: [String] = {
        print("执行了")
        return ["lmj", "lnj", "zs"]
    }()
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(listData)
        print(listData)
        print(listData)
    }
}

