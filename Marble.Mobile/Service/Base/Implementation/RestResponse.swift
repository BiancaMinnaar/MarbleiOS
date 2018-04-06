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
    var content: [String: AnyObject]
    
    init(response: NetworkResponseProtocol) {
        self.statusDescription = response.statusDescription
        self.content = response.content
    }
    
    init(status:String, content:[String: AnyObject]) {
        self.statusDescription = status
        self.content = content
    }
}
