//
//  DataService.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/17/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    var rooms: [RoomData] = []
    
    private let room1 =  RoomData(imageName: "Rectangle Copy", imageName2: "Rectangle Copy 2", imageName3: "Rectangle Copy", hotelName: "35 Pierrepont St #C7", price: "2500", hotelAdress: "Brooklyn, NY 11236", hotelInfo: "2 bed 2 bath", descriptionInfo: "Stunning corner home 2 bedroom 2 bathroom with approximately 1,268 square feet of living space! The master bedroom features a large walk-in closet offering ample storage. There is a beautiful gourmet chef's kitchen with a large absolute black granite island, in-sink garbage disposal, and GE stainless steel appliances. The apartment features hardwood solid white oak floors, solar shades in the living room, black out shades in the bedrooms and LED track lighting throughout.")
    
    private let room2 = RoomData(imageName: "Room 2-1", imageName2: "Room 2-2", imageName3: "Room 2-3", hotelName: "86 Gerrymain Rd #F3", price: "1250", hotelAdress: "NewYork, NY 11253", hotelInfo: "1 bed 1 bath", descriptionInfo: "Stunning corner home 1 bedroom 1 bathroom with approximately 1,068 square feet of living space! The master bedroom features a large walk-in closet offering ample storage. There is a beautiful gourmet chef's kitchen with a large absolute black granite island, in-sink garbage disposal, and GE stainless steel appliances. The apartment features hardwood solid white oak floors, solar shades in the living room, black out shades in the bedrooms and LED track lighting throughout.")
    
    private let room3 = RoomData(imageName: "Room 3-1", imageName2: "Room 3-2", imageName3: "Room 3-3", hotelName: "22 Yonker St #B4", price: "4200", hotelAdress: "Queens, NY 11539", hotelInfo: "3 bed 2 bath", descriptionInfo: "Stunning corner home 3 bedroom 2 bathroom with approximately 2,268 square feet of living space! The master bedroom features a large walk-in closet offering ample storage. There is a beautiful gourmet chef's kitchen with a large absolute black granite island, in-sink garbage disposal, and GE stainless steel appliances. The apartment features hardwood solid white oak floors, solar shades in the living room, black out shades in the bedrooms and LED track lighting throughout.")
    
    private let room4 = RoomData(imageName: "Room 4-1", imageName2: "Room 4-2", imageName3: "Room 4-3", hotelName: "90 Simmons Rd #M3", price: "2700", hotelAdress: "Brooklyn, NY 11236", hotelInfo: "2 bed 1 bath", descriptionInfo: "Stunning corner home 2 bedroom 1 bathroom with approximately 1,568 square feet of living space! The master bedroom features a large walk-in closet offering ample storage. There is a beautiful gourmet chef's kitchen with a large absolute black granite island, in-sink garbage disposal, and GE stainless steel appliances. The apartment features hardwood solid white oak floors, solar shades in the living room, black out shades in the bedrooms and LED track lighting throughout.")
    
    func getData() -> [RoomData] {
        rooms.append(room1)
        rooms.append(room2)
        rooms.append(room3)
        rooms.append(room4)
        return rooms
    }
}
