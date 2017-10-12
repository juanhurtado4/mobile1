//
//  ViewController.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let friends = [Friend]()
    
    // Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath)
        
        let friend = friends[indexPath.row]
        cell.textLabel?.text = "\(friend.name) \(friend.mood.rawValue)"
        
        return cell
    }
    
  
    // Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moodSegue", sender: nil)
    }

    @IBOutlet weak var moodTableView: UITableView!
    
    @IBAction func addPressed(_ sender: Any) {
        performSegue(withIdentifier: "moodSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        moodTableView.delegate = self
        moodTableView.dataSource = self
        
    }

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}

