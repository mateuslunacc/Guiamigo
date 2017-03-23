//
//  User+CoreDataProperties.swift
//  Guiamigo
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var homeTown: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var events: NSSet?

}

// MARK: Generated accessors for events
extension User {

    @objc(addEventsObject:)
    @NSManaged public func addToEvents(_ value: Event)

    @objc(removeEventsObject:)
    @NSManaged public func removeFromEvents(_ value: Event)

    @objc(addEvents:)
    @NSManaged public func addToEvents(_ values: NSSet)

    @objc(removeEvents:)
    @NSManaged public func removeFromEvents(_ values: NSSet)

}
