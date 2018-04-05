//
//  NetworkRequestProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol NetworkRequestProtocol {
    var networkExtention:String {get set}
    var parameters: [NSObject] {get set}
    var methodType: BaseNetworkAccessEnum {get set}
    
    func addParameter(name:String, value: AnyObject)
    func addFile(name:String, value:[UInt8], fileName:String)
    func addHeader(name:String, value:String)
    func addJSONBody(body:BaseProjectModel)
}
