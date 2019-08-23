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
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
