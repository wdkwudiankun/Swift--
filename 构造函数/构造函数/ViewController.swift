//
//  ViewController.swift
//  构造函数
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person()
        print("\(p.name),\(p.age)")
        
        let p1 = Person(name: "diankun", age: 25)
        print("\(p1.name)...........")
        
        let p2 = Person(dict: ["name":"kunkun","age":26])
        print("\(p2.age)")
    }

}

