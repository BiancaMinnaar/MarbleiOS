//
//  RestResponseWithBody.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/04/04.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

class RestResponseWithBody<A:BaseProjectModel>: RestResponse, NetworkResponseWithBodyProtocol {
    var body: A
    
    init(response: NetworkResponseProtocol, data: A) {
        self.body = data
        super.init(response: response)
        self.statusDescription = response.statusDescription
        self.content = response.content
        
    }
}
