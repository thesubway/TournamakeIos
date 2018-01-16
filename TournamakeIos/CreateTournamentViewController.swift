//
//  CreateTournamentViewController.swift
//  TournamakeIos
//
//  Created by Daniel Hoang on 1/15/18.
//  Copyright © 2018 Daniel Hoang. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase
import FirebaseAuth

class CreateTournamentViewController: UIViewController {

    var ref: DatabaseReference!
    @IBOutlet weak var tournamentNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = Database.database().reference()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        print(tournamentNameTF.text!)
        //UserDefaults.standard.set(user!.uid, forKey: "uid")
        self.ref.child("users").child(UserDefaults.standard.string(forKey: "uid")!).setValue(["tournamentName": tournamentNameTF.text!])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
