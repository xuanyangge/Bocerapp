//
//  checkEmailForm.swift
//  BocerApp
//
//  Created by Dempsy on 6/29/16.
//  Copyright © 2016 Dempsy. All rights reserved.
//

import Foundation

class checkEmailForm {
    func check(email: String?) -> Bool {
        var flag: Int = 0
        for c in (email?.characters)!  {
            if c == "@" {
                flag += 1
                if flag > 1 {break}
            }
        }
        if flag != 1 {return false}
        
        let t = email?.rangeOfString("@")
        let domain = email?.substringFromIndex(t!.startIndex.successor())
        flag = 0
        for c in(domain?.characters)! {
            if c=="." {
                flag += 1
                if flag > 1 {break}
            }
        }
        if flag != 1 {return false}
        return true
    }
}