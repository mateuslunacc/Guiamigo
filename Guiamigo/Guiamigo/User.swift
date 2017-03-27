//
//  UserDAO.swift
//  Guiamigo
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation

class User {
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var birthday: NSDate
    var picture: String
    
    init(firstName: String, lastName: String, email: String, password: String, birthday: NSDate) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.birthday = birthday
        self.picture = "default-profile-icon"
    }
    
    //init()
    
}

class UserDAO {
    
}
