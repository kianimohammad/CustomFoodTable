//
//  ViewController.swift
//  CustomFoodTable
//
//  Created by Mohammad Kiani on 2019-10-30.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var foods: [String]?
    var calories: [Int]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        foods = ["Apple", "Banana", "Burger", "Fries", "Orange", "Pizza"]
        calories = [50, 60, 900, 600, 30, 700]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard foods != nil else {return UITableViewCell()}
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
        let foodName = foods![indexPath.row]
        cell.textLabel?.text = foodName
        cell.imageView?.image = UIImage(named: foodName)
        cell.detailTextLabel?.text = "\(calories![indexPath.row])"
        return cell
    }


}

