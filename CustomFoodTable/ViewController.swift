//
//  ViewController.swift
//  CustomFoodTable
//
//  Created by Mohammad Kiani on 2019-10-30.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var foods: [String]?
    var calories: [Int]?
    var foodData: [(name: String, calory: Int)]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        foods = ["Apple", "Banana", "Burger", "Fries", "Orange", "Pizza"]
        calories = [50, 60, 900, 600, 30, 700]
        foodData = [("Apple", 50), ("Banana", 60), ("Burger", 900), ("Fries", 600), ("Orange", 30), ("Pizza", 700)]
        
        tableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "food cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard foods != nil else {return UITableViewCell()}
//        let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
//        let foodName = foods![indexPath.row]
//        cell.textLabel?.text = foodName
//        cell.imageView?.image = UIImage(named: foodName)
//        cell.detailTextLabel?.text = "calories: \(calories![indexPath.row])"
//        return cell
        
        let foodName = foodData![indexPath.row].name
        let foodCalory = foodData![indexPath.row].calory
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "food cell") as! FoodTableViewCell
        cell.setName(name: foodName, calories: foodCalory, image: foodName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodName = foodData![indexPath.row].name
        let alertController = UIAlertController(title: "Food Selected", message: "You have selected \(foodName)", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        let printAction = UIAlertAction(title: "Print", style: .default) { (action) in
            print("Selected food is \(foodName)")
        }
        
        alertController.addAction(okAction)
        alertController.addAction(printAction)
        
        self.present(alertController, animated: true, completion: nil)
    }


}

