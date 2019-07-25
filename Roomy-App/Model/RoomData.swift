//
//  RoomData.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/25/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation

struct RoomData {
    
    private(set) public var imageName: String
    private(set) public var imageName2: String
    private(set) public var imageName3: String
    private(set) public var hotelName: String
    private(set) public var price: String
    private(set) public var hotelAdress: String
    private(set) public var hotelInfo: String
    private(set) public var descriptionInfo: String
    
    init(imageName: String, imageName2: String, imageName3: String, hotelName: String, price: String, hotelAdress: String, hotelInfo: String, descriptionInfo: String) {

        self.imageName = imageName
        self.imageName2 = imageName2
        self.imageName3 = imageName3
        self.hotelName = hotelName
        self.price = price
        self.hotelAdress = hotelAdress
        self.hotelInfo = hotelInfo
        self.descriptionInfo = descriptionInfo
        
    }
    
}
