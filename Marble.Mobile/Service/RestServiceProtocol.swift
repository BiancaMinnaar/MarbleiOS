//
//  RestServiceProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol RestServiceProtocol {
    var NetworkInteractionSucceeded: ((NetworkCallEventArgs) -> Void)? {get set}
    var NetworkInteractionFailed: ((NetworkCallEventArgs) -> Void)? {get set}
    var NetworkCallInitialised: (()->Void)? {get set}
    var NetworkCallCompleted: (()->Void)? {get set}
    
    func ExecuteNetworkRequest(urlExtension:String, parameterCollection:Dictionary<String,AnyObject>, networkAccessEnum:BaseNetworkAccessEnum, closure:(()->Void)?)
}
