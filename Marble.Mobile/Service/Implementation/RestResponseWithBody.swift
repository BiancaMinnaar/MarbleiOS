//
//  RestResponseWithBody.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/04.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestResponseWithBody<A:BaseProjectModel>: NetworkResponseWithBodyProtocol {
    var body: A 
    var statusDescription: String
    var content: String
    var RawBytes: [UInt8]
    
    init(response: NetworkResponseProtocol, data: A) {
        self.statusDescription = response.statusDescription
        self.content = response.content
        self.RawBytes = response.RawBytes
        self.body = data
    }
}
