//
//  settingsViewController.swift
//  Eat and Split
//
//  Created by Hans Christian on 08/17/16.
//  Copyright © 2016 CHR27. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {
    
    // Outlets initialization

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ACTION
    
    // Tap to review
    @IBAction func tapToReview(_ sender: Any) {
        // let appStore = "https://itunes.apple.com/app/id\(appleID)?action=write-review"
        let appStore = "https://www.apple.com/itunes/"
        UIApplication.shared.open(URL(string: appStore)!, options: [:],completionHandler: nil)
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
