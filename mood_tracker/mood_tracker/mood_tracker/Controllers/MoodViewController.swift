//
//  MoodViewController.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

protocol MoodViewControllerDelegate: class {
    func addMood(friend: Friend)
}


class MoodViewController: UIViewController {
    // MARK: DELEGATE
    weak var delegate: MoodViewControllerDelegate?
    
    
    // MARK: PROPERTIES
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var pickMood: UISegmentedControl!

    var friend: Friend?
    var row: Int?
    
    func chooseEmoji() {
        switch self.friend!.mood {
        case "😃":
            pickMood.selectedSegmentIndex = 0
        case "😡":
            pickMood.selectedSegmentIndex = 1
        case "😑":
            pickMood.selectedSegmentIndex = 2
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if self.friend != nil  {
//            chooseEmoji()
//        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectionButton(_ sender: Any) {
        
//        if self.friend == nil {
//            guard let friendsName = nameTextField.text, let friendsMood = pickMood.titleForSegment(at: pickMood.selectedSegmentIndex) else {return}
//
//            let name = friendsName
//            let mood = friendsMood
//
//            let friend = Friend(name: name, mood: mood)
//
//            delegate?.addMood(friend: friend)
//        } else {
//            guard let friendsName = nameTextField.text, let friendsMood = pickMood.titleForSegment(at: pickMood.selectedSegmentIndex) else {return}
//
//            self.friend?.name = friendsName
//            self.friend?.mood = friendsMood
//
//            delegate?.editMood(friend: self.friend!, row: self.row!)
//        }
        
        var friend = Friend()
        friend.name = nameTextField.text ?? ""
        var mood = ""
        
        switch pickMood.selectedSegmentIndex {
        case 0:
           mood =  "😃"
        case 1:
           mood =  "😡"
        case 2:
           mood =  "😑"
        default:
            break
        }
        
        friend.mood = mood
        
         delegate?.addMood(friend: friend)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    // MARK: - Navigation

}
