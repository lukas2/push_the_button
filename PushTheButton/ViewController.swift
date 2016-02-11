//
//  ViewController.swift
//  PushTheButton
//
//  Created by Lukas Zielinski on 10/02/16.
//  Copyright © 2016 OTTO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!
    @IBOutlet var label: UILabel!
    
    var numberOfTaps = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tappedButton() {
        label.text = "Number of taps: \(++numberOfTaps)"
    }
    
}

