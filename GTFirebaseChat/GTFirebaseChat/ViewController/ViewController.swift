//
//  ViewController.swift
//  GTFirebaseChat
//
//  Created by Sanjay Shah on 11/07/17.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var textFieldEmail:UITextField!
    @IBOutlet weak var textFieldPassword:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonLoginClicked(_ sender:UIButton) {
        Auth.auth().signIn(withEmail: textFieldEmail.text!, password: textFieldPassword.text!) { (user, error) in
            self.performSegue(withIdentifier: "showFrndListSegue", sender: nil)
        }
    }

    @IBAction func buttonRegisterClicked(_ sender:UIButton) {
        let user = User(textFieldEmail.text!, textFieldPassword.text!)
        user.registerUser()
    }
    
    @IBAction func buttonLogutClicked(_ sender:UIButton) {
        User().signOut()
    }
    
    @IBAction func buttonChangePasswordClicked(_ sender:UIButton) {
        let user = User(textFieldEmail.text!, textFieldPassword.text!)
        user.changePassword()
    }
}

