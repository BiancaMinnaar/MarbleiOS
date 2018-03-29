//
//  BaseProjectRepository.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class BaseProjectRepository {
    var _MasterRepository: MasterRepositoryProtocol
    
    init(masterRepo: MasterRepositoryProtocol) {
        _MasterRepository = masterRepo
    }
}
