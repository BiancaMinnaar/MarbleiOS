//
//  RestResponse.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/04.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestResponse: NetworkResponseProtocol {
    var statusDescription: String
    var content: String
    var RawBytes: [UInt8]
    
    init(status:String, content:String, rawBytes:[UInt8]) {
        self.statusDescription = status
        self.content = content
        self.RawBytes = rawBytes
    }
}
