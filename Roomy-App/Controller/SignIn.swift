//
//  SignIn.swift
//  Roomy-App
//
//  Created by Ehab Eletreby on 7/13/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import UIKit
import IBAnimatable

class SignIn: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signInAcion(_ sender: AnimatableView) {
        
        if userNameTextField.text?.isEmpty == true  || passWordTextField.text?.isEmpty == true {
           showAlert()
        } else {
           let storyBord = UIStoryboard.init(name: "Main", bundle: nil)
            let detailsViewController = storyBord.instantiateViewController(withIdentifier: "DetailsVC") 
            self.present(detailsViewController, animated: true, completion: nil)
         }
      }
    
    func showAlert() {
        let errorAlert = UIAlertController(title: "Oops!", message: "Both fields are required", preferredStyle: .alert)
        let okayBtn = UIAlertAction(title: "Okay", style: .default, handler: { (action) in
            errorAlert.dismiss(animated: true, completion: nil)
        })
        errorAlert.addAction(okayBtn)
        self.present(errorAlert, animated: true, completion: nil)
    }
}

