//
//  NetworkResponseProtocol.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/29.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation

protocol NetworkResponseProtocol {
    var statusDescription:String{get}
    var content:[String: AnyObject]{get}
}

protocol NetworkResponseWithBodyProtocol : NetworkResponseProtocol {
    associatedtype returnModel
    var body: returnModel{get set}
}
