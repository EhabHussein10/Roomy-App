//
//  BackButton.swift
//  Roomy-App
//
//  Created by Mac on 7/18/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation

protocol backButton {
    
    func addBackBtnWithImageName(string:String)-> Void
    {
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: string), for: UIControl.State.normal)
        button.addTarget(self, action:#selector(backbtnClick), for: UIControl.Event.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    @objc func backbtnClick()  {
        _ = navigationController?.popViewController(animated: true)
    }

}
