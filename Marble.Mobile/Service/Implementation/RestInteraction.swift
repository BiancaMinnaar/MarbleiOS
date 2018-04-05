//
//  RestInteraction.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/02.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation
import Alamofire

class RestInteraction: NetworkInteractionProtocol {
    var baseConnectionString: String
    
    init(baseConnectionString: String) {
        self.baseConnectionString = baseConnectionString
    }
    
    func constructURL(with urlExtention: String) -> String
    {
        return self.baseConnectionString + urlExtention
    }
    
    func getNetworkRequest(urlExtension: String, httpMethod: BaseNetworkAccessEnum) -> NetworkRequestProtocol {
        return RestRequest(urlExtention: urlExtension, httpMethodType: httpMethod)
    }
    
    func executeRequest(request: NetworkRequestProtocol) -> NetworkResponseProtocol {
//        request(request.networkExtention, method:request.methodType, parameters:request.parameters, encoding: JSONEncoding.default)
            return AnyObject.self as! NetworkResponseProtocol
    }
    
    func executeRequest<A:NetworkResponseWithBodyProtocol>(responseModel: A, request: NetworkRequestProtocol) -> A.returnModel {
        return AnyObject.self as! A.returnModel
    }
    
    
}
