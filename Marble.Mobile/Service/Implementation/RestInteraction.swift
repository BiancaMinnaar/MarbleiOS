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
    
    func getMethod(networkAccessMethod:BaseNetworkAccessEnum) -> HTTPMethod {
        switch networkAccessMethod {
        case .GET:
            return .get
        case .POST:
            return .post
        case .PUT:
            return .put
        }
    }
    
    func executeRequest(request: NetworkRequestProtocol) -> NetworkResponseProtocol {
        let parms = request.parameters
        let method = getMethod(networkAccessMethod: request.methodType)
        var rResponse: NetworkResponseProtocol = AnyObject.self as! NetworkResponseProtocol
        Alamofire.request(constructURL(with: request.networkExtention), method:method, parameters:parms, encoding: JSONEncoding.default).responseJSON(completionHandler: ({ (response) in
            guard response.result.isSuccess else {
                print("Network Error: \(String(describing: response.result.error))")
                //errorHandler
                return
            }
            
            guard let jsonString = response.result.value as? [String: AnyObject] else{
                print("Malformed data received from service")
                //ErrorHandler
                return
            }
            
            //let userDate = UserLoginResult(withJSONData: userJSON as AnyObject )
            rResponse = RestResponse(status: "Success", content: jsonString)
        }))
        return rResponse
    }
    
    func executeRequest<A:NetworkResponseWithBodyProtocol>(responseModel: A, request: NetworkRequestProtocol) -> A.returnModel {
        return AnyObject.self as! A.returnModel
    }
    
    
}
