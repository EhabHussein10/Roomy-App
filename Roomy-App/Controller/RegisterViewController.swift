//
//  RegisterViewController.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/3/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit
import IBAnimatable

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUpAction(_ sender: AnimatableView) {
        
    }
    
    @IBAction func backAction(_ sender: AnimatableView) {
        dismiss(animated: true, completion: nil)
    }
}
