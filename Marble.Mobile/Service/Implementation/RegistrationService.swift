//
//  RegistrationService.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/06.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RegistrationService: BaseProjectService, RegistrationServiceProtocol {
    func RegisterUser(userModel: UserViewModel) {
        var parameters = Dictionary<String, AnyObject>()
        parameters["username"] = userModel.userName as AnyObject
        
        MasterRepository.sharedInstance.ExecuteNetworkRequest(urlExtension: "register", parameterCollection: parameters, networkAccessEnum: BaseNetworkAccessEnum.GET) { (responseJ) in
            let data = responseJ
        }
    }
    
    
}
