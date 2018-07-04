//
//  ViewController.swift
//  SkeletonDemo
//
//  Created by Domo on 2018/7/4.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit
import SkeletonView

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SkeletonTableViewDelegate, SkeletonTableViewDataSource{

    let identifier = "CustomCell"
    var headerView : HeaderVeiw?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Skeleton Screen加载占位图"
        
        let tableView = UITableView.init(frame: CGRect(x:0, y:0, width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.estimatedRowHeight = 80
        
        self.headerView = HeaderVeiw.init(frame: CGRect(x:0, y:0, width:UIScreen.main.bounds.width, height:220))
        tableView.tableHeaderView = self.headerView
        
        //注册nib
        tableView.register(UINib.init(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: identifier)
        
        tableView.isSkeletonable = true

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.view.hideSkeleton()
            self.headerView?.hideSkeleton()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.showAnimatedSkeleton()
        self.headerView?.showAnimatedGradientSkeleton()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func collectionSkeletonView(_ skeletonView: UITableView, cellIdenfierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return "CustomCell"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! CustomCell
        headerView?.setValueForHeader()
        cell.iconImage.image = UIImage(named:"经典")
        cell.titleLabel.text = "大大大标题"
        cell.subLabel.text = "下峥嵘而无地兮，上寥廓而无天。视倏忽而无见兮，听惝恍而无闻。超无为以至清兮，与泰初而为邻。"

        return cell
    }

}

