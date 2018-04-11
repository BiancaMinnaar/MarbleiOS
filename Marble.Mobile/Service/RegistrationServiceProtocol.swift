//
//  RegistrationServiceProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/06.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol RegistrationServiceProtocol {
    func RegisterUser(userModel: UserViewModel, closure:@escaping (([String : AnyObject]) -> Void)) -> Void
}
