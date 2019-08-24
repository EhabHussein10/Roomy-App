//
//  Login.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Login:NSObject {
    class func login (email:String,password:String, completion: @escaping (_ error: Error?, _ success: Bool) -> Void ){
        let paramters = ["email":email,"password":password]
        let request = RoomyRouter.signIn(paramters)
        
        AF.request(request).validate().responseJSON { response in
                switch response.result {
                case .success(let value):
                let json = JSON(value as Any)
                let auth_token = json["auth_token"].string
                let userDefaults = UserDefaults.standard
                userDefaults.set(auth_token, forKey: "auth_token")
                case .failure:
                    break
                }
            }
        }
    }



