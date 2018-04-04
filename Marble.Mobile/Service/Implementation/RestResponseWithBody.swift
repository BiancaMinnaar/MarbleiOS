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
    
    init(status:String, content:String, rawBytes:[UInt8], body:A) {
        self.statusDescription = status
        self.content = content
        self.RawBytes = rawBytes
        self.body = body
    }
}
