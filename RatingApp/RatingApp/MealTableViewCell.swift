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
    
    @IBOutlet weak var BackgroundCardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.mealImage.layer.cornerRadius = self.mealImage.frame.size.width / 2
        self.mealImage.clipsToBounds = true
        
//        BackgroundCardView.layer.cornerRadius = 3.0
//        BackgroundCardView.backgroundColor = UIColor.whiteColor()
//        contentView.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
//        BackgroundCardView.layer.masksToBounds = false
//        BackgroundCardView.layer.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.2).CGColor
//        BackgroundCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
//        
//        BackgroundCardView.layer.shadowOpacity = 0.8

        BackgroundCardView.layer.cornerRadius = 2
        BackgroundCardView.layer.masksToBounds = false
        BackgroundCardView.layer.shadowOpacity = 0.5
        BackgroundCardView.layer.borderColor = UIColor.whiteColor().CGColor
        BackgroundCardView.layer.borderWidth = 1.0
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
