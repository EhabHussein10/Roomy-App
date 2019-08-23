//
//  NetworkRouter.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/3/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import Alamofire

enum RoomyRouter: URLRequestConvertible {
    static let baseURLString = Urls.main
    
    case signIn ([String: Any])
    case signUp ([String: Any])
    case addRooms ([String: Any])
    case getRooms ([String: Any])
    
    func asURLRequest() throws -> URLRequest {
        var method: HTTPMethod {
            switch self {
            case .signIn:
                return .post
            case .signUp:
                return .post
            case .addRooms:
                return .post
            case .getRooms:
                return .get
            }
        }
        
        let params: ([String: Any]?) = {
            switch self {
            case .signIn(let userSignInDetails):
                return userSignInDetails
            case .signUp(let userSignUpDetails):
                return userSignUpDetails
            case .addRooms(let newRooms):
                return newRooms
            case .getRooms(let userRoomData):
                return userRoomData
            }
        }()
        
        let headers : HTTPHeaders? = {
            let authHeaders: [String:String]!
            switch self {
            case .signIn:
                authHeaders =  nil
            case .signUp:
                authHeaders = nil
            case .addRooms:
                authHeaders = ["Authorization": UserDefaults.standard.object(forKey: "auth_token") as! String ]
            case .getRooms:
                authHeaders = ["Authorization": UserDefaults.standard.object(forKey: "auth_token") as! String ]
            }
            return HTTPHeaders(authHeaders)
        }()
        
        let url: URL = {
            let relativePath: String?
            switch self {
            case .signIn(_):
                relativePath = Urls.login
            case .signUp(_):
                relativePath = Urls.register
            case .addRooms(_):
                relativePath = Urls.rooms
            case .getRooms(_):
                relativePath = Urls.rooms
            }
            
            var url = URL(string: RoomyRouter.baseURLString)!
            if let relativePath = relativePath {
                url = url.appendingPathComponent(relativePath)
            }
            return url
        }()
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        let encoding: ParameterEncoding = {
            switch method {
            case .get:
                return URLEncoding.default
            default:
                return JSONEncoding.default
            }
        }()
        return try encoding.encode(urlRequest, with: params)
    }
}

