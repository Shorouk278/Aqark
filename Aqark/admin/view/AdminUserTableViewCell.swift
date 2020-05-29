//
//  AdminUserTableViewCell.swift
//  Aqark
//
//  Created by ZeyadEl3ssal on 5/17/20.
//  Copyright © 2020 ITI. All rights reserved.
//

import UIKit
import Cosmos

class AdminUserTableViewCell: UITableViewCell {


    @IBOutlet weak var cardBackgroundView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userRating: CosmosView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0)
        cardBackgroundView.backgroundColor = .white
        cardBackgroundView.layer.cornerRadius = 10.0
        cardBackgroundView.layer.masksToBounds = false
        cardBackgroundView.layer.shadowColor = UIColor.black.cgColor
        cardBackgroundView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        cardBackgroundView.layer.shadowOpacity = 0.8
    }
}
