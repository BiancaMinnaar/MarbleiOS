//
//  RegistrationRepository.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/06.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RegistrationRepository: BaseProjectRepository, RegistrationRepositoryProtocol {
    var registrationService = RegistrationService()
    
    func doRegistration(userModel: UserViewModel, closure:@escaping (([String : AnyObject]) -> Void)) -> Void {
        registrationService.RegisterUser(userModel: userModel, closure: closure)
    }
    
    
}
