//
//  FoodNibCell.swift
//  CustomFoodTable
//
//  Created by Mohammad Kiani on 2019-11-01.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class FoodNibCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func setName(name: String, calories: Int, image: String) {
        nameLabel.text = name
        caloriesLabel.text = "\(calories) cals"
        foodImage.image = UIImage(named: image)
        
        
    }
    
}
