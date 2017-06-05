//
//  AppDelegate.swift
//  FQCard
//
//  Created by 冯倩 on 2017/5/8.
//  Copyright © 2017年 冯倩. All rights reserved.
//  1

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    var window: UIWindow?
    let mainVC = MainViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return true
    }
    
    //进入后台
    func applicationDidEnterBackground(_ application: UIApplication)
    {
        let now = Date()
        let timeInterval:TimeInterval = now.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        UserDefaults.standard.set(timeStamp, forKey: "currentTime")
    }
    
    //进入前台
    func applicationWillEnterForeground(_ application: UIApplication)
    {
        let now = Date()
        let timeInterval:TimeInterval = now.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        let currentTime = UserDefaults.standard.value(forKey: "currentTime")
        if (timeStamp - (currentTime as! Int)) > 10
        {
            //超过10S则显示手势密码
            mainVC.gestureView.isHidden = false
            mainVC.gestureView.isFirst = false
            mainVC.gestureView.messageLabel.text = "确认手势密码"
        }
    }




}

