//
//  BaseViewController.swift
//  FQCard
//
//  Created by 冯倩 on 2017/5/10.
//  Copyright © 2017年 冯倩. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        //监听程序挂起消息
        NotificationCenter.default.addObserver(self, selector: #selector(test), name: NSNotification.Name.UIApplicationWillResignActive, object: nil)
    }
    
    func test()
    {
        print("后台挂起")
    }

}
