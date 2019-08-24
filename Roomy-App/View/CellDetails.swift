//
//  CellDetails.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/16/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class CellDetails: UITableViewCell {
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellImage2: UIImageView!
    @IBOutlet weak var cellImage3: UIImageView!
    @IBOutlet weak var hotelNameLbl: UILabel!
    @IBOutlet weak var pricelabl: UILabel!
    @IBOutlet weak var hotelAdressLbl: UILabel!
    @IBOutlet weak var hotelInfoLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateCell(roomData: RoomData) {
        cellImage.image = UIImage(named: roomData.imageName)
        cellImage2.image = UIImage(named: roomData.imageName2)
        cellImage3.image = UIImage(named: roomData.imageName3)
        hotelNameLbl.text = roomData.hotelName
        hotelInfoLbl.text = roomData.hotelInfo
        hotelAdressLbl.text = roomData.hotelAdress
        pricelabl.text = roomData.price
        
    }
}
