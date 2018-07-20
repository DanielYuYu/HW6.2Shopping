//
//  ViewController.swift
//  HW6.2Shopping
//
//  Created by Daniel on 2018/7/20.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var countLabel1: UILabel!
    @IBOutlet weak var countLabel2: UILabel!
    @IBOutlet weak var countLabel3: UILabel!
    @IBOutlet weak var countLabel4: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var stepperCount1:Int=0
    var stepperCount2:Int=0
    var stepperCount3:Int=0
    var stepperCount4:Int=0
    
    @IBAction func stepper1(_ sender: UIStepper) {
        stepperCount1 = Int(sender.value)
        countLabel1.text = "\(stepperCount1)"
        calculate()
    }
    @IBAction func stepper2(_ sender: UIStepper) {
        stepperCount2 = Int(sender.value)
        countLabel2.text = "\(stepperCount2)"
        calculate()
    }
    @IBAction func stepper3(_ sender: UIStepper) {
        stepperCount3 = Int(sender.value)
        countLabel3.text = "\(stepperCount3)"
        calculate()
    }
    @IBAction func stepper4(_ sender: UIStepper) {
        stepperCount4 = Int(sender.value)
        countLabel4.text = "\(stepperCount4)"
        calculate()
    }
    func calculate(){
       var  total = 0
        total = 900 * stepperCount1 + 2250 * stepperCount2 + 1490 * stepperCount3 + 890 * stepperCount4
        
        totalLabel.text = "總計: \(total)"
        
    }
    
}

