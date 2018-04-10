//
//  MasterRepositoryProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/28.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol MasterRepositoryProtocol {
    func ExecuteNetworkRequest(urlExtension:String, parameterCollection:[String: AnyObject], networkAccessEnum:BaseNetworkAccessEnum, closure:@escaping (([String: AnyObject])->Void))
    func pushHomeView() -> Void
}
