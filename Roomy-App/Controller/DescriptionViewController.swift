//
//  DescriptionViewController.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/18/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet weak var descriptionImg: UIImageView!
    @IBOutlet weak var descriptionLabl: UILabel!
    
    var datapass: RoomData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionImg.image = UIImage(named: datapass.imageName)
        descriptionLabl.text = datapass.descriptionInfo
    }
    
    @IBAction func dismiss(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}

