//
//  RegisterViewController.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 8/3/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit
import IBAnimatable
import NVActivityIndicatorView

class RegisterViewController: UIViewController, NVActivityIndicatorViewable {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUpAction(_ sender: AnimatableView) {
        if Connection.isConnected() {
            startAnimating()
            let name = nameTextField.text
            let email = emailTextField.text
            let password = passwordTextField.text
            let confirmPassword = confirmPasswordTextField.text
            
            if name?.isEmpty == true || email?.isEmpty == true || password?.isEmpty == true || confirmPassword?.isEmpty == true {
                stopAnimating()
                showAlert(message: "Complete the requird fields", title: "Empty fields")
            }
            else if name?.isEmpty == true || email?.isEmpty == false || password?.isEmpty == false || confirmPassword?.isEmpty == false {
                stopAnimating()
                showAlert(message: "Please Enter Your Name", title: "Empty field")
            }
            else if name?.isEmpty == false || email?.isEmpty == true || password?.isEmpty == false || confirmPassword?.isEmpty == false {
                stopAnimating()
                showAlert(message: "Please Enter Your Email", title: "Empty field")
            }
            else if name?.isEmpty == false || email?.isEmpty == false || password?.isEmpty == true || confirmPassword?.isEmpty == false {
                stopAnimating()
                showAlert(message: "Please Enter Your Password", title: "Empty field")
            }
            
            if password != confirmPassword {
                stopAnimating()
                showAlert(message: "Passwords don't match", title: "Wrong password")
            }
            
            Register.register(name: name!, email: email!, password: password!) { (_: Error?, success: Bool) in
                if success {
                    let storyBord = UIStoryboard.init(name: "Main", bundle: nil)
                    let detailsViewController = storyBord.instantiateViewController(withIdentifier: "Details")
                    self.present(detailsViewController, animated: true, completion: nil)
                    
//                    self.performSegue(withIdentifier: "DetailsSegue", sender: Any?.self)
                }
                else {}
            }
        }
        else {
            stopAnimating()
            showAlert(message: "No Internet Connection", title: "Connection Failed")
        }
    }
    
    @IBAction func backAction(_ sender: AnimatableView) {
        dismiss(animated: true, completion: nil)
    }
}
