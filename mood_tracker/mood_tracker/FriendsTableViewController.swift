//
//  FriendsTableViewController.swift
//  mood_tracker
//
//  Created by juan hurtado on 9/29/17.
//  Copyright © 2017 projects. All rights reserved.
//

import UIKit

struct Friend {
    let name: String
    var mood: String?
}

enum Mood: String {
    case happy = "😃"
    case neutral = "😑"
    case sad = "😩"
    case angry = "😡"
}



class FriendsTableViewController: UITableViewController {
    
    var friends: [Friend] = [
        Friend(name: "Jon Snow", mood: nil),
        Friend(name: "Night King", mood: nil),
        Friend(name: "Danny", mood: nil),
        Friend(name: "Ned Stark", mood: nil)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         //Configure the cell...

        return cell
    }

}
