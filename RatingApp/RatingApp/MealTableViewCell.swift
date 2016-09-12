//
//  MealTableViewCell.swift
//  RatingApp
//
//  Created by Rajhans Jadhao on 11/09/16.
//  Copyright © 2016 Rajhans Jadhao. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var mealImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.mealImage.layer.cornerRadius = self.mealImage.frame.size.width / 2
        self.mealImage.clipsToBounds = true
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
