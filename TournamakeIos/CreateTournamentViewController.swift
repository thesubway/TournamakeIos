//
//  CreateTournamentViewController.swift
//  TournamakeIos
//
//  Created by Daniel Hoang on 1/15/18.
//  Copyright © 2018 Daniel Hoang. All rights reserved.
//

import UIKit

class CreateTournamentViewController: UIViewController {

    @IBOutlet weak var tournamentNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        print(tournamentNameTF.text!)
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
