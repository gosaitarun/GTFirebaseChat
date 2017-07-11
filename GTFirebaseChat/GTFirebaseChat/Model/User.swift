//
//  User.swift
//  GTFirebaseChat
//
//  Created by Tarungiri Gosai on 11/07/17.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class User: NSObject {
    
    var email = ""
    var password = ""
    
    override init() {
        
    }
    
    init(_ email:String ,_ password: String) {
        self.email = email
        self.password = password
    }
    
    func loginUser() {
        Auth.auth().signIn(withEmail: self.email, password: self.password) { (user, error) in
            if error != nil {
                print("Login failed! \(String(describing: error))")
            }else{
                print("Login succeeded! \(String(describing: user))")
            }
        }
    }
    
    func registerUser() {
        Auth.auth().createUser(withEmail: self.email, password: self.password) { (user, error) in
            if error != nil {
                print("Register failed! \(String(describing: error))")
            }else{
                print("Register succeeded! \(String(describing: user))")
            }
        }
    }
    
    func signOut() {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
            }catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    func changePassword() {
        Auth.auth().sendPasswordReset(withEmail: self.email) { (error) in
            if error != nil {
                print("SendPasswordReset failed! \(String(describing: error))")
            }else{
                print("SendPasswordReset succeeded!")
            }
        }
    }
}
