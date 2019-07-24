//
//  SignupViewController.swift
//  BabyKeeperApp
//
//  Created by Nofar Kedem Zada on 20/07/2019.
//  Copyright © 2019 Nofar Kedem Zada. All rights reserved.
//

import Foundation
import UIKit
//import Firebase

class SignupViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPwTextField: UITextField!
    @IBOutlet weak var SignUpBtn: UIButton!
    
//    @IBAction func signUpAction(_ sender: Any) {
//        if passwordTextField.text != confirmPwTextField.text {
//            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
//            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//            
//            alertController.addAction(defaultAction)
//            self.present(alertController, animated: true, completion: nil)
//        }
//        else{
//            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!){ (user, error) in
//                if error == nil {
//                    self.performSegue(withIdentifier: "signupToHome", sender: self)
//                }
//                else{
//                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//                    
//                    alertController.addAction(defaultAction)
//                    self.present(alertController, animated: true, completion: nil)
//                }
//            }
//        }
//    }
    
    
    
}
