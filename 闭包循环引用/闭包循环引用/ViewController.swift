//
//  ViewController.swift
//  闭包循环引用
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var finished:(()->())?  //swift中定义属性，必须在结构方法中初始化，否则就必须加上？
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //在OC中 __weak typeof(self) weakSelf = self
        weak var weakSelf = self
        loadData { () -> () in
            print("执行了loadData")
            
            weakSelf!.view.backgroundColor = UIColor.redColor()
        }
    }
    
    func loadData(finished:()->()){
    
        self.finished = finished //保存闭包
        finished()
    }
    
    //类似dealloc 方法
    deinit{
    
        print("deinit")
    
    }

}

