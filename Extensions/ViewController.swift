//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        var fullName = "Benjamin Su"
        var phoneNumber = 8675309
        print(fullName.pigLatin)
        print(phoneNumber.halved)
        unicornLevelLabel.text = fullName.unicornLevel
    }
}


//Create a String object with the value as your full name called fullName
//Create an Int object with the value 8675309 called phoneNumber
//Print the value of the extension computed properties on fullName and phoneNumber
//Call all of your String and Int functions on your name and print them to the console
