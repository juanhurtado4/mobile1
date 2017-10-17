//
//  Friend.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

//Eliel's Demonstration
//enum Mood: String {
//    case happy =  "😃"
//    case angry = "😡"
//    case neutral = "😑"
//}
//
//struct Friend {
//    let name: String
//    let mood: String
//}
class Friend {
    var name: String
    var mood: String
    
    init(name: String, mood: String) {
        self.name = name
        self.mood = mood
    }
}

