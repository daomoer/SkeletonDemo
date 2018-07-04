//
//  CustomCell.swift
//  SkeletonDemo
//
//  Created by Domo on 2018/7/4.
//  Copyright © 2018年 知言网络. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        iconImage.layer.masksToBounds = true
        iconImage.layer.cornerRadius = self.iconImage.frame.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
