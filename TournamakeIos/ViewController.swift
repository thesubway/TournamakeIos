//
//  ViewController.swift
//  TournamakeIos
//
//  Created by Daniel Hoang on 1/12/18.
//  Copyright © 2018 Daniel Hoang. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var loginButton : FBSDKLoginButton = FBSDKLoginButton()
        loginButton.delegate = self
        loginButton.readPermissions = ["public_profile", "email"];
        loginButton.center = self.view.center;
        if let currentToken = FBSDKAccessToken.current() {
            print("userID: \(currentToken.userID!)")
            print("tokenString: \(currentToken.tokenString!)")
        }
        self.view.addSubview(loginButton);
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
        Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            // ...
            var userEmail = user!.email
        }
    
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            print("Firebase signout success")
        } catch let signOutError as NSError {
            print ("Firebase Error signing out: %@", signOutError)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

