//
//  AppDelegate.swift
//  GreatChefSwiftProject
//
//  Created by 赵赤赤 on 2016/9/21.
//  Copyright © 2016年 mhz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // 初始化页面
        self.createUI()
        
        return true
    }
    
    
    // MARK: 创建页面
    func createUI() {
        // 初始化
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // 设置颜色
        self.window?.backgroundColor = GCColorRGB(r: 255, g: 255, b: 255, a: 1)
        
        // 指定根视图
        let tabBarController = GCTabBarController()
        self.window?.rootViewController = tabBarController
        
        self.window?.makeKeyAndVisible()
    }
    
    
}

