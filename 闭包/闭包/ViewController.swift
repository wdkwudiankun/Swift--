//
//  ViewController.swift
//  闭包
//
//  Created by DiankunWu on 16/5/16.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //  闭包的格式
        /**********
        {
            (参数) -> 返回值类型
            in
            执行语句
        }
       ***********/
        
        loadData1("diankun") { () -> () in
            print("loadData1")
        }
        
        loadData2 { () -> () in
        
            print("执行了回调")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func loadData1(name:String, finished:() -> ()){
    
        print("name = \(name)")
        finished()
    
    }
    
    func loadData2(finished: () -> ()){
    
        print("loadData2")
        
        finished() //回调
    }
    
    


}

