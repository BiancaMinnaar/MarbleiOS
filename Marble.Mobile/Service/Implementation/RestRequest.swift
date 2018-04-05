//
//  RestRequest.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/04.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestRequest: NetworkRequestProtocol {
    var parameters: [NSObject]
    var networkExtention: String
    var methodType: BaseNetworkAccessEnum
    
    init(urlExtention: String, httpMethodType: BaseNetworkAccessEnum) {
        parameters = [NSObject]()
        self.networkExtention = urlExtention
        methodType = httpMethodType
    }
    
    func addParameter(name: String, value: AnyObject) {
        
    }
    
    func addFile(name: String, value: [UInt8], fileName: String) {
        
    }
    
    func addHeader(name: String, value: String) {
        
    }
    
    func addJSONBody(body: BaseProjectModel) {
        
    }
    

}
