//
//  File.swift
//  new_mood_tracker
//
//  Created by juan hurtado on 10/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit

protocol ShowNameOnCell {
// Protocol provides the skeleton to how we are going to show the name on the cell
// The reason for first parameter is to have access to name of user
// The reason for second parameter is to display the name in organized fashion to separate by rows and where are we getting the name.. by this first parameter
    
    func showNameOnCell(user: NameOfUser, row: Int)
}

class NameOfUser {
//  Structures the attribute that is going to be displayed in the cell
    var nameOfFriend: String?
}
