//
//  Alert.swift
//  Roomy-App
//
//  Created by Mac on 8/23/19.
//  Copyright © 2019 Ehab Eletreby. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(message: String, title: String) {
        let errorAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayBtn = UIAlertAction(title: "Okay", style: .default, handler: { (action) in
            errorAlert.dismiss(animated: true, completion: nil)
        })
        errorAlert.addAction(okayBtn)
        present(errorAlert, animated: true, completion: nil)
    }
}
