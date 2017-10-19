//
//  ViewController.swift
//  ProtocolPresentable
//
//  Created by Eliel A. Gordon on 10/3/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

// Mitchell's stretch challenges:
// 1) add a second button that opens a different alert
//      a) add a button in storyboard
//      b) add a new IBAction
//      c) add some code to the IBAction to open the alert
// 2) Modify presentAlert() to take a cancelCallback that fires when cancel is pressed
//      a) cancle callback could be optional
//      b) cancelCallback: (()->())?
//      c) cancelCallback?() or if cancelCallback != nil { cancelCallback() }

import UIKit

class ViewController: UIViewController, AlertPresentable {

    @IBAction func presentView(_ sender: Any) {
        // COMPLETED: ELIEL'S TODO: Use your protocol function to present the alert view controller
        presentAlert(title: "King Jon Snow", message: "King of the north", okCallback: {
            print("This prints when ok button was pressed")
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()        
        
    }
    
}

