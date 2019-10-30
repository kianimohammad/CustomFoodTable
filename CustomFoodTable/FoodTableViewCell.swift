//
//  FoodTableViewCell.swift
//  CustomFoodTable
//
//  Created by Mohammad Kiani on 2019-10-30.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    var nameLabel: UILabel?
    var caloriesLabel: UILabel?
    var iconFoodImage: UIImageView?
    
    func setName(name: String, calories: Int, image: String) {
        nameLabel = UILabel(frame: CGRect(x: 10, y: 15, width: 140, height: 40))
        nameLabel?.text = name
        
        caloriesLabel = UILabel(frame: CGRect(x: 160, y: 15, width: 140, height: 40))
        caloriesLabel?.text = "\(calories) cals"
        
        iconFoodImage = UIImageView(image: UIImage(named: image))
        iconFoodImage?.frame = CGRect(x: 310, y: 10, width: 40, height: 40)
        
        self.contentView.addSubview(nameLabel!)
        self.contentView.addSubview(caloriesLabel!)
        self.contentView.addSubview(iconFoodImage!)
        
    }
}
