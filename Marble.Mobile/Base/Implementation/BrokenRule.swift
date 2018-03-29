//
//  BrokenRule.swift
//  Marble.Mobile
//
//  Created by Bianca Minnaar on 2018/03/28.
//  Copyright © 2018 MarbleTech. All rights reserved.
//

import Foundation
class BrokenRule {
    var ruleToTest : () -> Void
    var balance: String
    
    init(ruleToTest:@escaping()->Void, balance: String) {
        self.ruleToTest = ruleToTest
        self.balance = balance
    }
}
