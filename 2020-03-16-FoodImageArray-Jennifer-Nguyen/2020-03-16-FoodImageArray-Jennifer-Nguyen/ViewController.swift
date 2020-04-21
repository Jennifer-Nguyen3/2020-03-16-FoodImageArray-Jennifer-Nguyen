//
//  ViewController.swift
//  2020-03-16-FoodImageArray-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 3/16/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    
    //Add String to specify it is a String [String]
    let foodImageArray: [String] = ["chicken", "hamburger", "noodle", "pasta", "pizza", "salad", "steak"]

    let foodNameArray: [String] = ["Roasted Chicken", "Classic Burger", "Chicken Noodle Soup", "Bow-Tie Pasta", "Pepperoni Pizza", "Italian Salad", "Grilled Steak"]
    
    //add Double to specify it is a double value
    let foodPriceArray = [13.99, 13.99, 11.99, 12.99, 11.99, 10.99, 15.99]
    var foodIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this is the first screen when your app is loaded
        // Do any additional setup after loading the view.
        //set up the image to be the chicken and the price to be the price for the chicken dish
        foodImageView.image = UIImage (named: foodImageArray[0])
        
        print(foodImageArray[0])
        foodPriceLabel.text = foodNameArray[0] + ": $" + "\(foodPriceArray[0])"
        
        

        
    }

    @IBAction func nextDishButtonClicked(_ sender: UIButton) {
        
        
        foodIndex = foodIndex + 1
        //make sure that the chicken is going to show after the steak
        if foodIndex == foodImageArray.count {
            foodIndex = 0
        }
        foodImageView.image = UIImage (named:foodImageArray[foodIndex])
        
        
        print (foodImageArray[foodIndex])
        
        foodPriceLabel.text = foodNameArray[foodIndex] + ": $" + "\(foodPriceArray[foodIndex])"
    }
    
    
    
    
    
    

}

