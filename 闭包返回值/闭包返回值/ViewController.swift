//
//  ViewController.swift
//  闭包返回值
//
//  Created by DiankunWu on 16/5/17.
//  Copyright © 2016年 DiankunWu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sc = createScrollView({ () -> Int in
            return 14
            }) { (index) -> UILabel in
                let width = 50
                let label = UILabel()
                label.backgroundColor = UIColor.blackColor()
                label.textColor = UIColor.redColor()
                label.font = UIFont.systemFontOfSize(16)
                label.text = "text\(index)"
                label.frame = CGRect(x: index * width, y: 0, width: width, height: 40)
                
                return label
        }
        view.addSubview(sc)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createScrollView(labelCount:()->Int,labelWithIndex:(index:Int)->UILabel) ->UIScrollView{
    
        let sc = UIScrollView(frame:CGRect(x: 0, y: 90, width: 375, height: 40))
        let count = labelCount()
        
        for i in 0..<count{
        
            let label = labelWithIndex(index: i)
            sc.addSubview(label)
            sc.contentSize = CGSize(width: CGFloat(count)*label.bounds
                .width, height: 40)
        }
        
        return sc
    }


}

