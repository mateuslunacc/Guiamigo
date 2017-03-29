//
//  Chat.swift
//  Guiamigo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation

class Chat{

    let user: User
    let event: Event
    
    init(user: User, event: Event){
        self.user = user
        self.event = event
    }
}


class ChatDAO {
    static var chats: [Chat] = []
    
    static func getEvents() -> [Chat] {
        let user4 = User(firstName: "Lary", lastName: "Tertuliano", email: "lary.tertuliano@gmail.com", password: "12345", birthday: NSDate())

        let event = Event(name: "Calourada dos Feras de CC", latitude: -7.215190, longitude: -35.909681, host: user4)
        
        let chat1 = Chat(user: user4, event: event)
        
        chats.append(chat1)
        
        return chats
    }
    
}
