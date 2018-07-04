//
//  HeaderVeiw.swift
//  SkeletonDemo
//
//  Created by Domo on 2018/7/4.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit

class HeaderVeiw: UIView {
    var iconImageView : UIImageView!
    var titleLabel : UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUpUI(){
        self.backgroundColor = UIColor.white
        iconImageView = UIImageView.init(frame: CGRect(x:UIScreen.main.bounds.width/2-40, y:10, width:80, height:80))
        iconImageView.isSkeletonable = true
        self.addSubview(iconImageView)
        
        titleLabel = UILabel.init(frame: CGRect(x:15, y: 100, width:UIScreen.main.bounds.width-30, height:100))
        titleLabel.numberOfLines = 4
        titleLabel.isSkeletonable = true
        self.addSubview(titleLabel)

    }
    
    // 给cell赋值，项目中一般使用model，我这里直接写死了
    func setValueForHeader(){
        iconImageView.image = UIImage(named:"经典")
        titleLabel.text = "悲时俗之迫阨兮，愿轻举而远游。质菲薄而无因兮，焉讬乘而上浮？遭沈浊而污秽兮，独郁结其谁语！夜耿耿而不寐兮，魂营营而至曙。惟天地之无穷兮，哀人生之长勤。往者余弗及兮，来者吾不闻。"
    }
}
