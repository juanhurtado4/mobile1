//
//  PresentableAlertView.swift
//  ProtocolPresentable
//
//  Created by Eliel A. Gordon on 10/3/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

// COMPLETED: ELIEL'S TODO:
// Write protocol  to present alert view on any UIViewController
// Hint: You will need to constrain the protocol to UIViewController instances and use protocol extensions
// ---------------------------------------------------------------------------------------------------

// Mitchell's stretch challenges:
// 1) add a second button that opens a different alert
//      a) add a button in storyboard
//      b) add a new IBAction
//      c) add some code to the IBAction to open the alert
// 2) Modify presentAlert() to take a cancelCallback that fires when cancel is pressed
//      a) cancle callback could be optional
//      b) cancelCallback: (()->())?
//      c) cancelCallback?() or if cancelCallback != nil { cancelCallback() }

// ---------------------------------------------------------------------------------------------------

//  NOTE TO SELF:
// We are creating an protocol with an optional function
@objc protocol AlertPresentable {
     @objc optional func presentAlert()
}

// Below the extension defines the (presentAlert) function in the protocol where (alertPresentable) is of type (UIViewController)
extension AlertPresentable where Self: UIViewController {
    func presentAlert(title: String, message: String, okCallback: @escaping () -> ()) {
        // NOTE: (UIAlertController is a class)
        // Below alertVC is creating an instance of (UIAlertController)
        let alertVC = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        // Now I am adding an action to the UIAlertController
        alertVC.addAction(
            // This creates an UIAlertAction object
            UIAlertAction(
                title: "Ok",            // set the title
                style: .default,        // set the style
                handler: { (action) in  // Adds functionality to the button once it is pressed
                    okCallback()        // This callback passed in as a parameter from outside
            }))
        
        // This adds an action (cancel) to this button. It does the exact same thing as above except
        // it adds a "cancel" button instead of an "OK" button
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // alertVC.addAction(UIAlertAction)
        
        self.present(alertVC, animated: true, completion: nil)
    }
}

func test(cancelCallback:(()->())?) {
    cancelCallback?()
}
