//
//  NetworkIntegrationProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/28.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol NetworkIntegrationRepositoryProtocol {
    var NetworkInteractionSucceeded: ((NetworkCallEventArgs) -> Void)? {get set}
    var NetworkInteractionFailed: ((NetworkCallEventArgs) -> Void)? {get set}
    var NetworkCallInitialised: (()->Void)? {get set}
    var NetworkCallCompleted: (()->Void)? {get set}
    
    func ExecuteNetworkRequest(urlExtension:String, parameterCollection:[String: AnyObject], networkAccessEnum:BaseNetworkAccessEnum, closure:@escaping (()->[String: AnyObject]))
}
