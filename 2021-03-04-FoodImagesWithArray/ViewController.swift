//
//  ViewController.swift
//  2021-03-04-FoodImagesWithArray
//
//  Created by FMJ on 3/4/21.
//

import UIKit

class ViewController: UIViewController {

    //establish the IBoutlet for imageview and label
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    
    @IBOutlet weak var foodPriceLabel: UILabel!
    
    //set up our data for image and price
    //use array
    let foodImageArray = ["pizza", "burger", "steak", "salad"]
    let foodPriceArray = [19.99, 15.99, 23.99, 12.99]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we set image to be index 0
        //we set the tage of the imageview to be the index 0
        //we set the price to be index 0
        foodImageView.image = UIImage(named: foodImageArray[0])
        foodImageView.tag = 0
        foodPriceLabel.text = "Price: $\(foodPriceArray[0])"
        // Do any additional setup after loading the view.
    }

// establish IBAction for our button
    
    @IBAction func nextDishButtonClicked(_ sender: UIButton) {
        //we will find out what is the tag for your imageview
        let currentIndex = foodImageView.tag
        var nextIndex = currentIndex + 1
        //use if statement to make sure the image will return to pizza at the end
        if nextIndex == foodImageArray.count {
            nextIndex = 0
    
        }
    
        foodImageView.image = UIImage(named: foodImageArray[nextIndex])
        foodImageView.tag = nextIndex
        foodPriceLabel.text = "Price: $\(foodPriceArray[nextIndex])"
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    
    
    
    
}

