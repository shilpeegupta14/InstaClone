//
//  personCollectionViewCell.swift
//  InstaClone
//
//  Created by Shilpee Gupta on 18/05/23.
//

import UIKit

class personCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var personView: UIImageView! {
        didSet {
            personView.layer.borderColor = selectedColor
        }
    }
    
//    let selectedColor = UIColor(red: 46/255, green: 204/255, blue: 113/255, alpha: 1.0).cgColor
    
    
//    Instagram Color Code, #E4405F, rgb(228, 64, 95)
    //neon pink hex code is rgb(254, 52, 126)
    //255, 68, 204
    let selectedColor = UIColor(red: 254/255, green: 68/255, blue: 204/255, alpha: 1.0).cgColor
    let unselectedColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0).cgColor
    
    override var bounds: CGRect {
        didSet {
            guard personView != nil else {
                return
            }
            
            //personView.layer.cornerRadius = 2.0
        }
    }
    
    
    override var isSelected: Bool {
        didSet {
            personView.layer.borderColor = isSelected ? selectedColor : unselectedColor
            personView.layer.borderWidth = 4.0
        }
    }
    
}
