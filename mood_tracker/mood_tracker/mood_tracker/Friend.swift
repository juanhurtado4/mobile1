//
//  Friend.swift
//  mood_tracker
//
//  Created by juan hurtado on 10/12/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

enum Mood: String {
    case happy =  "😃"
    case sad = "😩"
    case neutral = "😑"
}

struct Friend {
    let name: String
    let mood: Mood
}
