//
//  MasterRepository.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/28.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class MasterRepository: MasterRepositoryProtocol {
    //let networkIntegration: NetworkIntegrationRepositoryProtocol
    
    private static var sharedInstance: MasterRepository = {
        let instance = MasterRepository()
        
        return instance
    }()
    
    private init() {
        //self.networkIntegration = NetworkIntegrationRepository(restService: RestService(baseUrl: "http://localhost:8080/api/"))
    }
    
    class func shared() -> MasterRepository {
        return sharedInstance
    }
    
    func ExecuteNetworkRequest(urlExtension: String, parameterCollection: [String : AnyObject], networkAccessEnum: BaseNetworkAccessEnum, closure: @escaping (([String : AnyObject]) -> Void)) {
        var networkIntegration = NetworkIntegrationRepository(restService: RestService(baseUrl: "http://localhost:8080/api/"))
        networkIntegration.ExecuteNetworkRequest(urlExtension: urlExtension, parameterCollection: parameterCollection, networkAccessEnum: networkAccessEnum, closure: closure)
    }
    

    func pushHomeView() {
        
    }
    

}
