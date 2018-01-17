//
//  GCMineController.swift
//  GreatChefSwiftProject
//
//  Created by 赵赤赤 on 2016/9/21.
//  Copyright © 2016年 mhz. All rights reserved.
//

import UIKit

class GCMineController: GCCommonViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始化UI
        self.createUI()
    }
    
    
    
    func createUI() {
        /** 创建tableView */
        self.tableView = UITableView(frame: CGRect.zero, style: UITableViewStyle.grouped)
        self.view.addSubview(self.tableView!)
        self.tableView?.snp.makeConstraints({ (make) in
            make.edges.equalTo(0)
        })
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
    }

    
    
    
    
    // MARK: tableView代理方法
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        return cell;
    }
    
}
