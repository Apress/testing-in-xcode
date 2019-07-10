//
//  ViewController.swift
//  RegisterApp
//
//  Created by Bill Martensson on 2019-05-05.
//  Copyright © 2019 Bill Martensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var error_label: UILabel!
    @IBOutlet weak var email_tf: UITextField!
    @IBOutlet weak var password_tf: UITextField!
    @IBOutlet weak var bornyear_tf: UITextField!
    @IBOutlet weak var approveterms_switch: UISwitch!
    @IBOutlet weak var register_button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func approve_change(_ sender: Any) {
        checkButtonEnable()
    }
    
    @IBAction func register_user(_ sender: Any) {
        
        error_label.text = ""
        
        let reg_user = Person()
        reg_user.email = email_tf.text!
        reg_user.password = password_tf.text!
        reg_user.bornyear = bornyear_tf.text!
        reg_user.approved = approveterms_switch.isOn
        
        let error_message = reg_user.checkForm()
        
        if(error_message == nil)
        {
            print("OK FORM")
            // Lets submit to server
        } else {
            error_label.text = error_message
        }
        
    }
    
    @IBAction func changedTF(_ sender: UITextField) {
        
        checkButtonEnable()
        
    }
    
    func checkButtonEnable()
    {
        if(email_tf.text != "" && password_tf.text != "" && bornyear_tf.text != "" && approveterms_switch.isOn)
        {
            register_button.isEnabled = true
        } else {
            register_button.isEnabled = false
        }
    }
    
    
}

