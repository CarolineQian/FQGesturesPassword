//
//  OptionsViewController.swift
//  FQCard
//
//  Created by 冯倩 on 2017/5/8.
//  Copyright © 2017年 冯倩. All rights reserved.
//

import UIKit

class OptionsViewController: BaseViewController
{
   
    var gestureView : GestureView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.addSubview(changeGesturesButton)
        changeGesturesButton.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        changeGesturesButton.center = CGPoint(x: ScreenWidth / 2, y: ScreenHeight / 2)
        
    }
    
    override func test()
    {
        gestureView?.removeFromSuperview()
    }
    
    //MARK: - 懒加载
    lazy var changeGesturesButton : UIButton = {
            let btn = UIButton()
            btn.setTitle("修改手势密码", for: UIControlState.normal)
            btn.setTitleColor(UIColor.darkGray, for: UIControlState.normal)
            btn.addTarget(self, action:#selector(changeGesturesButtonAction), for: UIControlEvents.touchUpInside)
            return btn
    }()
    
    //MARK: - Actions
    func changeGesturesButtonAction()
    {
        print("修改手势密码")

        gestureView = GestureView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), changeGestures: true)
        view.addSubview(gestureView!)
        
    }
    
    
    
    


}
