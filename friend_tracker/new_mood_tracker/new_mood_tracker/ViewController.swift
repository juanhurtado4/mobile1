//
//  ViewController.swift
//  new_mood_tracker
//
//  Created by juan hurtado on 10/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class AddFriendsViewController: UIViewController {
    //     This is to add the friends and these are our ui elements
    //  MARK: UIElements
    @IBOutlet weak var addFriendsTextField: UITextField!
    
    // MARK: Supporter
    var delegate: ShowNameOnCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }

    //  MARK: UIButton
    
    @IBAction func addFriendButton(_ sender: UIButton) {
    // This button is going to add friends to a cell when the user types in their friend's name
        print("Hey I was tapped")
    }
    
    
    
}

