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
        let user1 = User(firstName: "Lary", lastName: "Tertuliano", email: "lary.tertuliano@gmail.com", password: "12345", birthday: NSDate())
        let user2 = User(firstName: "Mateus", lastName: "Silva", email: "mateus.silva@gmail.com", password: "12345", birthday: NSDate())
        let user3 = User(firstName: "Tiago", lastName: "Pereira", email: "tiago.pereira@gmail.com", password: "12345", birthday: NSDate())

        let event1 = Event(name: "Calourada dos Feras de CC", latitude: -7.215190, longitude: -35.909681, host: user1)
        let event2 = Event(name: "Festa no Cantinho!", latitude: -7.217335, longitude: -35.910786, host: user2)
        let event3 = Event(name: "Visitação no Hackatruck", latitude: -7.216846, longitude: -35.912074, host: user3)
        
        let chat1 = Chat(user: user1, event: event1)
        let chat2 = Chat(user: user2, event: event2)
        let chat3 = Chat(user: user3, event: event3)
        
        chats.append(chat1)
        chats.append(chat2)
        chats.append(chat3)
        
        return chats
    }
    
}
