//
//  ViewController.swift
//  TournamakeIos
//
//  Created by Daniel Hoang on 1/12/18.
//  Copyright © 2018 Daniel Hoang. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var loginButton : FBSDKLoginButton = FBSDKLoginButton()
        loginButton.readPermissions = ["public_profile", "email"];
        loginButton.center = self.view.center;
        if let currentToken = FBSDKAccessToken.current() {
            print("userID: \(currentToken.userID!)")
            print("tokenString: \(currentToken.tokenString!)")
        }
        self.view.addSubview(loginButton);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

