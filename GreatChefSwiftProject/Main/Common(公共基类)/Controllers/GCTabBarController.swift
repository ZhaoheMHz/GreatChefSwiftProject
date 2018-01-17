//
//  GCTabBarController.swift
//  GreatChefSwiftProject
//
//  Created by 赵赤赤 on 2016/9/21.
//  Copyright © 2016年 mhz. All rights reserved.
//

import UIKit

class GCTabBarController: UITabBarController {

    
    
    
    
    var commondVC: GCCommonViewController?
    var findVC: GCFindController?
    var publishVC: GCPublishViewController?
    var dynamicVC: GCDynamicController?
    var mineVC: GCMineController?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 取消半透明
        self.tabBar.isTranslucent = false
        
        // 设置图片
        self.tabBar.shadowImage = UIImage()
        self.tabBar.backgroundImage = UIImage(imageLiteralResourceName: "tabbar_line")
        
        // 设置文字颜色
        self.tabBar.tintColor = UIColor.black
        
        
        // 创建各个Controller
        self.commondVC = GCCommandController()
        self.configTabbarItem(vc: self.commondVC!, title: "推荐", image: UIImage(imageLiteralResourceName: "tab_home_un"), selectedImage: UIImage(imageLiteralResourceName: "tab_home"));
        
        self.findVC = GCFindController()
        self.configTabbarItem(vc: self.findVC!, title: "发现", image: UIImage(imageLiteralResourceName: "tab_home_un"), selectedImage: UIImage(imageLiteralResourceName: "tab_home"));
        
        self.publishVC = GCPublishViewController()
        self.configTabbarItem(vc: self.publishVC!, title: "", image: UIImage(imageLiteralResourceName: "tab_home_un"), selectedImage: UIImage(imageLiteralResourceName: "tab_home"));
        
        self.dynamicVC = GCDynamicController()
        self.configTabbarItem(vc: self.dynamicVC!, title: "动态", image: UIImage(imageLiteralResourceName: "tab_home_un"), selectedImage: UIImage(imageLiteralResourceName: "tab_home"));
        
        self.mineVC = GCMineController()
        self.configTabbarItem(vc: self.mineVC!, title: "我的", image: UIImage(imageLiteralResourceName: "tab_my_un"), selectedImage: UIImage(imageLiteralResourceName: "tab_my"));
    }
    
    
    
    // 配置tab栏内容
    func configTabbarItem(vc: UIViewController, title: String, image: UIImage, selectedImage: UIImage) {
        vc.navigationItem.title = title
        vc.tabBarItem.title = title;
        vc.tabBarItem.image = image.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        vc.tabBarItem.selectedImage = selectedImage.withRenderingMode(UIImageRenderingMode.alwaysOriginal);
        
        
        // 设置拍照按钮居中
        if vc == self.publishVC {
            let offset: CGFloat = 5.0
            vc.tabBarItem.imageInsets = UIEdgeInsetsMake(offset, 0, -offset, 0)
        }
        
        // 修改标题位置
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -3)
        
        // 添加到tabbar中
        let nav = GCNavigationVController(rootViewController: vc)
        self.addChildViewController(nav)
    }

}
