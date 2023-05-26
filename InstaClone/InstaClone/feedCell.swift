//
//  feedCell.swift
//  InstaClone
//
//  Created by Shilpee Gupta on 22/05/23.
//

import UIKit

class feedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var postView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        profileImage.layer.cornerRadius = 50
        profileImage.layer.borderColor = UIColor(red: 254/255, green: 68/255, blue: 204/255, alpha: 1.0).cgColor
        profileImage.layer.borderWidth = 2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
