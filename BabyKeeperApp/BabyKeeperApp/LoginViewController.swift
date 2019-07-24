//
//  LoginViewController.swift
//  BabyKeeperApp
//
//  Created by Nofar Kedem Zada on 17/07/2019.
//  Copyright © 2019 Nofar Kedem Zada. All rights reserved.
//

import Foundation
import UIKit
//import Firebase

class LoginViewController: UIViewController {
 
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        passwordTextField.text = "Password"
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
    @IBAction func didPressLoginButton(_ sender: UIButton) {
        print("adi")
        
        let params = ["username":"john", "password":"123456"] as Dictionary<String, String>
        
        var request = URLRequest(url: URL(string: "https://jsonplaceholder.typicode.com/todos")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                print(json)
            } catch {
                print("error")
            }
        })
        
        task.resume()
        
    }
    
//    @IBAction func loginAction(_ sender: Any) {
//        
//        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
//            if error == nil{
//                self.performSegue(withIdentifier: "loginToHome", sender: self)
//            }
//            else{
//                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//                
//                alertController.addAction(defaultAction)
//                self.present(alertController, animated: true, completion: nil)
//            }
//        }
//        
//    }
    
}
