//
//  Person.swift
//  RegisterApp
//
//  Created by Bill Martensson on 2019-05-21.
//  Copyright © 2019 Bill Martensson. All rights reserved.
//

import Foundation

class Person
{
    var email = ""
    var password = ""
    var bornyear = ""
    var approved = false
    
    func checkForm() -> String?
    {
        if(email == "")
        {
            return "Missing email"
        }
        
        let email_rx =  "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?@([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}[A-Za-z]{2,8}"
        let checkEmail = NSPredicate(format: "SELF MATCHES %@", email_rx)
        
        if(checkEmail.evaluate(with: email) == false)
        {
            return "Incorrect email"
        }
        
        if(password == "")
        {
            return "Missing password"
        }
        
        if(bornyear == "")
        {
            return "Missing born year"
        }
        
        let yearnow = Calendar.current.component(.year, from: Date())
        
        let bornyear_number = Int(bornyear)
        
        if(bornyear_number == nil)
        {
            return "Incorrect born year"
        }
        
        let age = yearnow - bornyear_number!
        
        if(age < 18)
        {
            return "Too young"
        }

        if(age > 100)
        {
            return "Too old"
        }

        if(approved == false)
        {
            return "Must approve"
        }
        
        
        return nil
    }
}

