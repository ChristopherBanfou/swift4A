//
//  ViewController.swift
//  pickerview
//
//  Created by esirem on 25/10/2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        value.text=String(row)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wheel.dataSource = self
        wheel.delegate = self
    }

    @IBOutlet weak var wheel: UIPickerView!
    @IBOutlet weak var value: UILabel!
    
    
    @IBAction func random() {
        let newValue = Int.random(in: 0...9)
        let newValue1 = Int.random(in: 0...9)
        let newValue2 = Int.random(in: 0...9)
        let newValue3 = Int.random(in: 0...9)
        wheel.selectRow(newValue, inComponent: 0, animated: true)
        wheel.selectRow(newValue1, inComponent: 1, animated: true)
        wheel.selectRow(newValue2, inComponent: 2, animated: true)
        wheel.selectRow(newValue3, inComponent: 3, animated: true)
        
        value.text = String(newValue) + String(newValue1) + String(newValue2) + String(newValue3)
        
        
    }
    
}

