//
//  FriendListTableViewCell.swift
//  TableView_Assignment_W2
//
//  Created by SC414 on 8/10/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class FriendListTableViewCell: UITableViewCell {

    static let identifier = "FriendListTableViewCell"
    
    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var viewFollow: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.selectionStyle = .none
        
        imgProfile.layer.masksToBounds = true
        imgProfile.layer.cornerRadius = imgProfile.bounds.width / 2
        
        viewFollow.layer.cornerRadius = viewFollow.bounds.height / 2
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
