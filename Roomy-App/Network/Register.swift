//
//  Register.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Register: NSObject {
    class func register(name:String, email:String, password:String, completion: @escaping (_ error: Error?, _ success: Bool) -> Void) {
        let paramters = ["name":name, "email":email, "password":password]
        let request = RoomyRouter.signUp(paramters)
      
        AF.request(request).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let auth_token = json["auth_token"].string
            case .failure:
               break
            }
        }
    }
}
