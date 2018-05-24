//
//  ViewController.swift
//  simpleCalculator
//
//  Created by CEU PHIAR CEU HNIN on 13/3/18.
//  Copyright © 2018 CEU PHIAR CEU HNIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var X: UITextField!
    
    @IBOutlet weak var Y: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var History: UITextView!
    
    
    @IBAction func calcOps(_ sender: UIButton) {
        var value : Double = 0;
        switch sender.tag {
        case 0:
            value = Double(X.text!)! + Double(Y.text!)!
        case 1:
            value = Double(X.text!)! - Double(Y.text!)!
        case 2:
            value = Double(X.text!)! * Double(Y.text!)!
        case 3:
            value = Double(X.text!)! / Double(Y.text!)!
        default:
            print ("Error")
        }
        switch sender.tag {
        case 0:
            History.text = "\(History.text!) \n \(X.text!) + \(Y.text!) = \(value)"
        case 1:
            History.text = "\(History.text!) \n \(X.text!) - \(Y.text!) = \(value)"
        case 2:
            History.text = "\(History.text!) \n \(X.text!) * \(Y.text!) = \(value)"
        case 3:
            History.text = "\(History.text!) \n \(X.text!) / \(Y.text!) = \(value)"
        default:
            print("Error!")
        }
        
        Result.text = "Result:" + "\n \(value)"
    }
    
}

