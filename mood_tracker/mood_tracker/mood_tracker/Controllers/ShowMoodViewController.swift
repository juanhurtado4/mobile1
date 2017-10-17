//
//  ShowMoodViewController.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

protocol ShowRowDelegate: class {
    func sendRow(friend: Friend, row: Int)
}

// , UITableViewDataSource, UITableViewDelegate,
class ShowMoodTableViewController: UITableViewController, MoodViewControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var moodTableView: UITableView!

    var friends = [Friend]() {
        didSet {
            moodTableView.reloadData()
        }
    }
    
    // Delegate
    weak var delegate: ShowRowDelegate?
    
    // Datasource Eliel's Demo
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return friends.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath)
//
//        let friend = friends[indexPath.row]
//        cell.textLabel?.text = "\(friend.name) \(friend.mood.rawValue)"
//
//        return cell
//    }
    
  
    // Conformed to the MoodViewControllerDelegate
    func editMood(friend: Friend, row: Int) {
        self.friends[row].name = friend.name
        self.friends[row].name = friend.mood
        moodTableView.reloadData()
    }
    
    // Conforms to the MoodViewControllerDelegate
    func addMood(friend: Friend) {
        friends.append(friend)
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "moodSegue", sender: nil)
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "showMoodTableViewCell", for: indexPath) as! ShowMoodTableViewController
        cell.nameTextField.text = friends[indexPath.row].name
        cell.moodLabel.text = friends[indexPath].mood
        
        return cell
    }
    
//    @IBAction func addPressed(_ sender: Any) {
//        performSegue(withIdentifier: "moodSegue", sender: nil)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        moodTableView.delegate = self
//        moodTableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "moodSegue" {
                let moodViewController = segue.destination as! MoodViewController
                moodViewController.delegate = self
                
                let indextPath = moodTableView.indexPathForSelectedRow?.row
            }
        }
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }
}

