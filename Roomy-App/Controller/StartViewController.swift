//
//  StartxsViewController.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/13/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.performSegue(withIdentifier: "StartSignIn", sender: self)
        })
    }
}

