//
//  WelcomeScreen.swift
//  Eat and Split
//
//  Created by Hans Christian on 08/19/17.
//  Copyright © 2017 CHR27. All rights reserved.
//

import UIKit

class WelcomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Welcome screen
        perform(#selector(WelcomeScreen.showNavigationController), with: nil, afterDelay: 3)
    }
    
    // Show the navigation controller
    func showNavigationController(){
        performSegue(withIdentifier: "welcomeScreen", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
