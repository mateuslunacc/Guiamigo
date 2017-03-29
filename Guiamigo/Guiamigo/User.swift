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
    static var userLogged: User?
    
    static func getUsers() -> [User] {
        return [
            User(firstName: "Mateus", lastName: "Luna", email: "mateus.luna@ccc.ufcg.edu.br", password: "12345", birthday: NSDate()),
            User(firstName: "Teste", lastName: ":)", email: "teste", password: "123", birthday: NSDate())
        ]
    }
    
    
    
}
