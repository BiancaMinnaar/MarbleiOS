//
//  RestService.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestService: RestServiceProtocol {
    var NetworkInteractionSucceeded: ((NetworkCallEventArgs) -> Void)?
    var NetworkInteractionFailed: ((NetworkCallEventArgs) -> Void)?
    var NetworkCallInitialised: (() -> Void)?
    var NetworkCallCompleted: (() -> Void)?
    
    func ExecuteNetworkRequest(urlExtension: String, parameterCollection: Dictionary<String, AnyObject>, networkAccessEnum: BaseNetworkAccessEnum, closure: (() -> Void)?) {
            
    }
}
