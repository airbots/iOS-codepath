//
//  ViewController.swift
//  tip_calculator_chen
//
//  Created by Chen He on 2017/3/8.
//  Copyright © 2017年 Chen He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var percentageChoice: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onTap(sender: AnyObject){
        view.endEditing(true)
    }
    @IBAction func CalculateTips(sender: AnyObject) {
        let bill = Double(billValue.text!) ?? 0
        
        let tipChoice = [0.15, 0.18, 0.20]
        let tip = bill * tipChoice[percentageChoice.selectedSegmentIndex]
        
        let total = tip + bill
        tipValue.text = String(format: "$%.2f", tip)
        totalValue.text = String(format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
}

