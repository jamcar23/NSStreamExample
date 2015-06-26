//
//  SIP.swift
//  NSStreamExample
//
//  Created by James Carroll on 6/25/15.
//  Copyright (c) 2015 James Carroll. All rights reserved.
//

import Foundation

// Session Initialization Protocol 
// Handles commands for app
class SIP {
  class func userOfMessage() -> String {
    return "USER::"
  }
  
  class func messageOfMessage() -> String {
    return "MESSAGE::"
  }
}