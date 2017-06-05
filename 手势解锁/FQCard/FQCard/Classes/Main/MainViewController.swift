//
//  MainViewController.swift
//  FQCard
//
//  Created by 冯倩 on 2017/5/8.
//  Copyright © 2017年 冯倩. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController
{
    //手势密码
    let gestureView = GestureView()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //设置tabBar颜色
        tabBar.tintColor = UIColor.hexStringToColor(hexString: ColorOfBlueColor)
        //主控制器
        addChildViewController(MemberCardViewController(), title: "会员卡", imageName: "Root_HomePage_Normal", selectImageName: "Root_HomePage_Select")
        addChildViewController(AccountViewController(), title: "账户", imageName: "Root_Invest_Normal", selectImageName: "Root_Invest_Select")
        addChildViewController(OptionsViewController(), title: "设置", imageName: "Root_Mine_Normal", selectImageName: "Root_Mine_Select")
        
        //手势密码
        gestureView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        view.addSubview(gestureView)
    }
    
    private func addChildViewController(_ childController: UIViewController, title: String, imageName: String, selectImageName: String)
    {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectImageName)
        childController.title = title
        
        let nav = UINavigationController()
        nav.addChildViewController(childController)
        addChildViewController(nav)
    }
}
