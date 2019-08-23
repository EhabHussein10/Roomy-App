//
//  GetRooms.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/21/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import RealmSwift

class GetRooms {
    class func getRoomsFromBackEnd(completionHandler: @escaping () -> Void) {
        if let token = UserDefaults.standard.string(forKey: "auth_token"){
            let request = RoomyRouter.getRooms(["Authorization": token])
            AF.request(request).validate().response { response in
                switch response.result {
                case .success(let value):
                    let realm = try! Realm()
                    try! realm.write {
                        realm.add(Object(value: value))
                       }
                    completionHandler()
                case.failure:
                    break
                }
            }
        }
    }
}
