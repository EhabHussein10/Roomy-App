//
//  Connection.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

class Connection {
    class func  isConnected () -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
