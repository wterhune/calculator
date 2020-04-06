//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Wisa Terhune on 2/2/20.
//  Copyright © 2020 Wisa Terhune. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentNumber : Int = 0
    var nextNumber : Int = 0
    
    var symbol = 0
    
    var calculateProcess = false

    //    @IBOutlet weak var label: UILabel
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if calculateProcess == true
        {
            label.text = String(sender.tag - 1)
            currentNumber  = Int(label.text!)!
            calculateProcess = false
        } else {
            label.text = label.text! + String(sender.tag - 1)
            currentNumber  = Int(label.text!)!
        }
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        if (label.text != "" && sender.tag != 13){
            nextNumber = Int(label.text!)!
            
            if (sender.tag == 11) //Addition
            {
                label.text = "+";
            }
            
            symbol = sender.tag
            calculateProcess = true
        } else if (sender.tag == 13) // "equals" sign
            
        {
            if (symbol == 11) //addition
            {
                label.text = String(nextNumber + currentNumber)
            }
        }
    }
    
    @IBAction func clearCalculator(_ sender: UIButton) {
        //the clear button resets everything
        if (sender.currentTitle == "C"){
            
            label.text = ""
            nextNumber = 0;
            currentNumber  = 0;
            symbol = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources
    }
    
    
}

