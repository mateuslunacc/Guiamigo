//
//  Event.swift
//  Guiamigo
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation

class Event {
    var name: String
    var start: Date
    var end: Date
    var latitude: Double
    var longitude: Double
    var host: User
    
    init(name: String, start: Date, end: Date, latitude: Double, longitude: Double, host: User) {
        self.name = name
        self.start = start
        self.end = end
        self.latitude = latitude
        self.longitude = longitude
        self.host = host

    }
    
    init (name: String, latitude: Double, longitude: Double, host: User) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.host = host
        self.start = Date()
        self.end = Date()
    }
}

class EventDAO {
    static func getEvents() -> [Event] {
        let user1 = User(name: "Ed")
        let user2 = User(name: "Diego")
        let user3 = User(name: "Rafa")
        
        return [
            Event(name: "Festa na casa de Ed!", latitude: -7.209134, longitude: -35.871502, host: user1),
            Event(name: "Treino de parkour", latitude: -7.22714484, longitude: -35.87819338, host: user2),
            Event(name: "Rafa dancing", latitude: -7.221281, longitude: -35.887687, host: user3)
        ]
        
    }
    
}
