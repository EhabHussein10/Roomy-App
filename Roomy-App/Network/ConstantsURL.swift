//
//  ConstantsURL.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/3/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

struct Urls {
    static let main = "https://roomy-application.herokuapp.com/"
    static let login = main + "auth/login"
    static let register = main + "signup"
    static let rooms = main + "rooms"
}
