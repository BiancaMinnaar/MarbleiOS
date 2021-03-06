//
//  NetworkInteractionProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol NetworkInteractionProtocol {
    func getNetworkRequest(urlExtension:String, httpMethod:BaseNetworkAccessEnum) -> NetworkRequestProtocol
    func executeRequest(request:NetworkRequestProtocol, closure:@escaping (([String : AnyObject]) -> Void)) -> Void
    func executeRequest<A:NetworkResponseWithBodyProtocol>(responseModel: A, request:NetworkRequestProtocol, closure:@escaping (([String : AnyObject]) -> Void)) -> Void
}
