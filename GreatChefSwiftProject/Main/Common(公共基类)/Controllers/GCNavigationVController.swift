//
//  GCNavigationVController.swift
//  GreatChefSwiftProject
//
//  Created by 赵赤赤 on 2016/9/21.
//  Copyright © 2016年 mhz. All rights reserved.
//

import UIKit

class GCNavigationVController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: UI设置
        self.configUI()
    }
    
    
    func configUI() {
        // 设置背景
        self.navigationBar.setBackgroundImage(UIImage(named: "navigation"), for: UIBarMetrics.default)
        
        // 设置分割线
        self.navigationBar.shadowImage = UIImage()
        
        // 设置字体大小
        self.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16)]
    }

}
