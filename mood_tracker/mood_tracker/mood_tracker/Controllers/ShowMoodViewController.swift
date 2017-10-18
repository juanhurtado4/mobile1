//
//  ShowMoodViewController.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

//protocol ShowRowDelegate: class {
//    func sendRow(friend: Friend, row: Int)
//}

// , UITableViewDataSource, UITableViewDelegate,
class ShowMoodViewController: UIViewController,  MoodViewControllerDelegate{
    func addMood(friend: Friend) {
        friends.append(friend)
    }
    
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        moodTableView.delegate = self
        //        moodTableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addMood" {
            let moodViewController = segue.destination as! MoodViewController
            moodViewController.delegate = self
            //print("tapped")
        }
    }
}

extension ShowMoodViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showMoodTableViewCell", for: indexPath) as! ShowMoodTableViewCell
        
        let row = indexPath.row
        let element = friends[row]
        
        cell.nameTextField.text = element.name
        cell.moodLabel.text = element.mood
        
        return cell
    }
    
//    @IBAction func addPressed(_ sender: Any) {
//        performSegue(withIdentifier: "moodSegue", sender: nil)
    //    }
    
}

//@IBAction func setDelegate(_ sender: Any) {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let moodVC = storyboard.instantiateViewController(withIdentifier: "MoodVC") as! MoodViewController
//    moodVC.delegate = self
//}




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
//        moodTableView.reloadData()

// Conforms to the MoodViewControllerDelegate


//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "moodSegue", sender: nil)
//    }
