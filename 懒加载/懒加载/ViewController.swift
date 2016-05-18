//
//  ViewController.swift
//  懒加载
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //懒加载一定要用var
    lazy var dataList:[String] = {
    
        return ["we3","fjjea","hfeo"]
    
    }()
    
    
    let demo = {() -> [String] in
        
        return ["S","dfe"]
    }
    lazy var dataList1:[String] = self.demo()
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(dataList)
        print(dataList1)
    }
    

}

