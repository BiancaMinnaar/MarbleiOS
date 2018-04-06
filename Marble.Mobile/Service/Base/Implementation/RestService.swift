//
//  RestService.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestService: RestServiceProtocol {
    var baseURL: String
    var interaction: NetworkInteractionProtocol
    var NetworkInteractionSucceeded: ((NetworkCallEventArgs) -> Void)?
    var NetworkInteractionFailed: ((NetworkCallEventArgs) -> Void)?
    var NetworkCallInitialised: (() -> Void)?
    var NetworkCallCompleted: (() -> Void)?
    
    init(baseUrl: String) {
        self.baseURL = baseUrl
        self.interaction = RestInteraction(baseConnectionString: baseUrl)
    }
    
    func ExecuteNetworkRequest(urlExtension: String, parameterCollection: [String: AnyObject], networkAccessEnum: BaseNetworkAccessEnum, closure:(([String: AnyObject]) -> Void)) {
        let req = self.interaction.getNetworkRequest(urlExtension: urlExtension, httpMethod: networkAccessEnum)
        let response = self.interaction.executeRequest(request: req)
        closure(response.content)
    }
}
