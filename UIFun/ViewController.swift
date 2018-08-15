//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    @IBOutlet weak var paintBucket: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.red
    }
    @IBOutlet weak var firstColor: UISegmentedControl!
    @IBOutlet weak var secondColor: UISegmentedControl!
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        let firstSelection = firstColor.selectedSegmentIndex
        let secondSelection = secondColor.selectedSegmentIndex
        let FirstColorChoice = getPaintColor(index: firstSelection)
        let secondColorChoice = getPaintColor(index: secondSelection)
        paintBucket.backgroundColor = mixColors(first: FirstColorChoice, second: secondColorChoice)
        
    }
    
    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
    }
    
    func getPaintColor(index: Int) -> String {
        switch index {
        case 0:
            return "Red"
        case 1:
            return "Yellow"
        case 2:
            return "Blue"
        default:
            return "White"
        }
    }
    

}
