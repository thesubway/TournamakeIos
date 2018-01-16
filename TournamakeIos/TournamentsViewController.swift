//
//  TournamentsViewController.swift
//  TournamakeIos
//
//  Created by Daniel Hoang on 1/13/18.
//  Copyright © 2018 Daniel Hoang. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import Firebase

class TournamentsViewController: UIViewController, FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        var loginButton : FBSDKLoginButton = FBSDKLoginButton()
        loginButton.delegate = self
        loginButton.readPermissions = ["public_profile", "email"];
        loginButton.center = self.view.center;
        self.view.addSubview(loginButton);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            print("Firebase signout success")
            self.navigationController?.popViewController(animated: true)
        } catch let signOutError as NSError {
            print ("Firebase Error signing out: %@", signOutError)
        }
    }
    
    @IBAction func addPressed(_ sender: Any) {
        print("add pressed")
    }
    
}
