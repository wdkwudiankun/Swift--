//
//  Person.swift
//  构造函数
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name:String?
    var age:Int = 0 //定义“基本数据类型”最好赋初始值
    //swift中基本数据类型设置为？，super.init()不会分配存储空间
    
    override init() {
        name = "diankun"
        age = 30
    }
    
    init(name:String, age:Int){
    
        self.name = name
        self.age = age
    }
    
    init(dict: [String: NSObject]){
        
        // 使用kvc给self赋值之前，必须调用super.init
        // 目的是保证对象创建成功
        super.init()
        self.setValuesForKeysWithDictionary(dict)
    
    }

}
