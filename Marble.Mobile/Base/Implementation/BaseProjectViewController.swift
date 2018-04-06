//
//  BaseProjectViewController.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/28.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class BaseProjectViewController
{
    let _masterRepo: MasterRepositoryProtocol
    let _networkRepo: NetworkIntegrationRepositoryProtocol
    
    init() {
        _masterRepo = MasterRepository()
        _network = NetworkIntegrationRepository()
    }
}
