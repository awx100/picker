//
//  ViewController.swift
//  mirable2
//
//  Created by Bo Zhang on 12/2/16.
//  Copyright © 2016 Bo Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var enterYourCountry: UITextField!
    
    @IBOutlet weak var zipcode: UILabel!
    
    @IBOutlet weak var enterYourZipcode: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    @IBOutlet weak var miraclePill: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var enterYourName: UITextField!
    @IBOutlet weak var Address: UILabel!
    @IBOutlet weak var enterYourAddress: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterYourCity: UITextField!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var divider: UIView!
    
    @IBOutlet weak var success: UIImageView!
    
    
    let states = ["Alabama", "Arkansaas", "New York", "California", "Maine", "Colorado", "Texas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipcode.isHidden = true
        enterYourZipcode.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        miraclePill.isHidden = true
        pillLabel.isHidden = true
        price.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        enterYourName.isHidden = true
        Address.isHidden = true
        enterYourAddress.isHidden = true
        city.isHidden = true
        enterYourCity.isHidden = true
        state.isHidden = true
        statePicker.isHidden = true
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipcode.isHidden = true
        enterYourZipcode.isHidden = true
        statePickerBtn.isHidden = true
        buyNowBtn.isHidden = true
        
        success.isHidden = false
        
        
    }
    
    
    
    

}

