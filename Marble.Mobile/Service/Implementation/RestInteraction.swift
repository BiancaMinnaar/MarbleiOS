//
//  RestInteraction.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/02.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestInteraction: NetworkInteractionProtocol {
    func getNetworkRequest(urlExtension: String, httpMethod: BaseNetworkAccessEnum) -> NetworkRequestProtocol {
        return RestRequest(urlExtention: urlExtension, httpMethodType: httpMethod)
    }
    
    func getNetworkRequestForJson(urlExtension: String, httpMethod: BaseNetworkAccessEnum) -> NetworkRequestProtocol {
        return RestRequest(urlExtention: urlExtension, httpMethodType: httpMethod)
    }
    
    func executeRequest(request: NetworkRequestProtocol) -> NetworkResponseProtocol {
//        request("http://mobileexam.dstv.com/login", method:.post, parameters: parameters, encoding: JSONEncoding.default)
        return RestResponse(status: "", content: "", rawBytes: [UInt8]())
    }
    
    func executeRequest<A>(responseModel: A, request: NetworkRequestProtocol) -> A.returnModel where A : NetworkResponseWithBodyProtocol {
        return RestResponseWithBody(status: "", content: "", rawBytes: [UInt8](), body: BaseProjectModel()).body as! A.returnModel
    }
    
    
}
