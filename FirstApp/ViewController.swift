//
//  ViewController.swift
//  FirstApp
//
//  Created by Alexandra on 01.09.15.
//  Copyright (c) 2015 Alexandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySecondSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var mySecondButton: UIButton!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var myThirdLabel: UILabel!
    @IBOutlet weak var myThirdButton: UIButton!
    @IBOutlet weak var myFouthButton: UIButton!
    @IBOutlet weak var myFifthButton: UIButton!

    
    @IBAction func myButtonTap(sender: AnyObject) {
        myButton.setTitle("Tapped", forState: .Normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.setTitle("Hello", forState: .Normal)
        mySegmentedControl.setTitle("Red", forSegmentAtIndex: 0)
        mySegmentedControl.setTitle("Green", forSegmentAtIndex: 1)
        myTextField.text = "It's a test app"
        mySecondSegmentedControl.setTitle("Merdana", forSegmentAtIndex: 0)
        mySecondSegmentedControl.setTitle("Optima", forSegmentAtIndex: 1)
        mySlider.maximumValue = 32
        mySlider.minimumValue = 8
        mySecondButton.setTitle("Start", forState: .Normal)
        myStepper.wraps = true
        myStepper.autorepeat = true
        myStepper.minimumValue = 8
        myStepper.maximumValue = 32
        myThirdButton.setTitle("Table 1", forState: .Normal)
        myFouthButton.setTitle("Table 2", forState: .Normal)
        myFifthButton.setTitle("Collection", forState: .Normal)
    }
    
    @IBAction func mySwitchTap(sender: AnyObject) {
        myButton.setTitle("Hello user!", forState: .Normal)
    }
    
    @IBAction func mySegmentedControlTap(sender: AnyObject) {
        if mySegmentedControl.selectedSegmentIndex == 0 {
            myLabel.backgroundColor = UIColor.redColor()
            myLabel.text = "Red"
            myTextField.backgroundColor = UIColor.redColor()
            
        } else {
            myLabel.backgroundColor = UIColor.greenColor()
            myLabel.text = "Green"
            myTextField.backgroundColor = UIColor.greenColor()
        }
    }
    
    @IBAction func mySecondSegmentedControlTap(sender: AnyObject) {
        if mySecondSegmentedControl.selectedSegmentIndex == 0 {
            myTextField.font = UIFont(name: "Merdana", size: 14)
        } else {
            myTextField.font = UIFont(name: "Optima", size: 14)
        }
    }
    
    @IBAction func mySecondButtonTap(sender: AnyObject) {
        if myIndicator.isAnimating() {
            mySecondButton.setTitle("Start", forState: .Normal)
            myIndicator.stopAnimating()
        } else {
            mySecondButton.setTitle("Stop", forState: .Normal)
            myIndicator.startAnimating()
        }
    }
    
    @IBAction func mySliderTap(sender: AnyObject) {
      mySecondLabel.text = "\(mySlider.value)"
    }
    
    @IBAction func myStepperTap(sender: UIStepper) {
            myThirdLabel.text = Int(sender.value).description
    }
    
    }

