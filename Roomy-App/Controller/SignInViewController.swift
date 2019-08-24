//
//  SignInViewController.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/13/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit
import IBAnimatable
import NVActivityIndicatorView

class SignInViewController: UIViewController, NVActivityIndicatorViewable {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signInAcion(_ sender: AnimatableView) {
        if Connection.isConnected() {
            startAnimating()
            let email = userNameTextField.text
            let password = passWordTextField.text
            
            if email?.isEmpty == true || password?.isEmpty == true {
                showAlert(message: "Both fields are required", title: "Empty fields!")
            }
            else if email?.isEmpty == false || password?.isEmpty == true {
                showAlert(message: "Please enter your password", title: "Empty field!")
            }
            else if email?.isEmpty == true || password?.isEmpty == false {
                showAlert(message: "Please enter your email", title: "Empty field!")
            }
            
            Login.login(email: email!, password: password!) { (_: Error?, success: Bool) in
                if success {
                        let storyBord = UIStoryboard.init(name: "Main", bundle: nil)
                        let detailsViewController = storyBord.instantiateViewController(withIdentifier: "Details")
                        self.present(detailsViewController, animated: true, completion: nil)
                    
//                    self.performSegue(withIdentifier: "DetailsSegue", sender: Any?.self)
                }
                else {
                    self.stopAnimating()
                    self.showAlert(message: "Invalied email or password", title: "Wrong credentials!")
                }
            }
        }
    }
}
