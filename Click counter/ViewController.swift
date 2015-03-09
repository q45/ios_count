//
//  ViewController.swift
//  Click counter
//
//  Created by Quintin Smith on 3/8/15.
//  Copyright (c) 2015 wasatch code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label1:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel()
        var label1 = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        label1.frame = CGRectMake(170,150,60,60)
        label1.text = "0"

        
        self.view.addSubview(label)
        self.label = label
        
        self.view.addSubview(label1)
        self.label1 = label1
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Add", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
//         Decrement Button
        var buttonDecrease = UIButton()
        buttonDecrease.frame = CGRectMake(180, 250, 90, 90)
        buttonDecrease.setTitle("Subtract", forState: .Normal)
        buttonDecrease.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        self.view.addSubview(buttonDecrease)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        buttonDecrease.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label1.text = self.label.text
        changeBackgroundColor()

    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        changeBackgroundColor()
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }


}

