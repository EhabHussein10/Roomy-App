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
    class func register(para: [String: String], completion: @escaping (_ error: Error?, _ success: Bool) -> Void) {
        let request = RoomyRouter.signUp(para)
      
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
