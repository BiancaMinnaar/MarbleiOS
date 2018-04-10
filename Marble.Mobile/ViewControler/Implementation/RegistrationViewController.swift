//
//  RegistrationViewController.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: BaseProjectViewController,  RegistrationViewControllerProtocol {
    var registrationRepo = RegistrationRepository()
    
    @IBAction func RegisterButton(_ sender: Any) {
        let user = UserViewModel()
        user.userName = self.UserName.text!
        
        register(with: user)
    }
    @IBOutlet weak var UserName: UITextField!
    
    func register(with userDetails: UserViewModel) {
        registrationRepo.doRegistration(userModel: userDetails)
    }
    
    
}
