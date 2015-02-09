//
//  main.swift
//  HelloSwift
//
//  Created by test5d on 15/2/8.
//  Copyright (c) 2015年 test5d. All rights reserved.
//

import Foundation

println("Hello, World!")
println("Hello中国")
println(1+1)


//ARC : Auto Reference Counting 自动引用计数
class Person{
    var name: String
    init(name:String){
        self.name = name
        println("\(name) is inited.")
    }
    deinit{
        println("\(name) is deinited")
    }
}
var p1:Person?
var p2:Person?
var p3:Person?
p1 = Person(name:"zhansan")
p2 = p1
p3 = p1
p1 = nil
p2 = nil
p3 = nil