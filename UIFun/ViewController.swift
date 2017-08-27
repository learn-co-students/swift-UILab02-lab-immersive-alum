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
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        var x:String
        var y:String
        
        switch firstColorSegmentedControl.selectedSegmentIndex{
            case 0:
            x = "Red"
            
            case 1:
            x = "Yellow"
            
            case 2:
            x = "Blue"
        
            default:
            x="Red"
        }
        
        switch secondColorSegmentedControl.selectedSegmentIndex{
            case 0:
            y = "Red"
            
            case 1:
            y = "Yellow"
            
            case 2:
            y = "Blue"
            
        default:
            y="Red"
            }
        print(x,y)
       paintBucket.backgroundColor=mixColors(first: x, second: y)
        
        }
        // TODO: Implement this function according to the instructions.


}
