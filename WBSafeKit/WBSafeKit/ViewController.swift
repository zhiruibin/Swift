//
//  ViewController.swift
//  WBSafeKit
//
//  Created by 智瑞斌 on 2020/11/27.
//  Copyright © 2020 wuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //数组处理；
        var list = [1,2,3,4,5,6]
        //let value6 = list[6]
        let value6 = list[~6]
        print("The value is \(String(describing: value6))")
        //list[6] = 7
        list[~6] = 7
        print("The list is \(String(describing: list))")
        //let value28 = list[(2...8)]
        let value28 = list[~(2...8)]
        print("The value 2-8 is \(String(describing: value28))")
       
        //字符串处理
        let i: String = "zhi rui bin";
        let index = i.index(~i.startIndex, offsetBy: ~15);
        let c = i[index]
        print("The string value is : \(c)")
       
        let indexOne = i.index(~i.startIndex, offsetBy: ~12, limitedBy: ~i.startIndex)
        let cOne = i[indexOne]
        print("The string value is : \(cOne)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
    }
    
}

