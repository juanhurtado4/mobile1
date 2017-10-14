//
//  DisplayFriendViewController.swift
//  new_mood_tracker
//
//  Created by juan hurtado on 10/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

// TODO: Challenge take code from github and decphyr which specific code is only sending the names back when you press the add friends button. And use that code to finish project
import Foundation
import UIKit

class DisplayFriendViewController: UITableViewController, ShowNameOnCell  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    var name = [NameOfUser]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func showNameOnCell(user: User, row: Int) {
        <#code#>
    }
}
