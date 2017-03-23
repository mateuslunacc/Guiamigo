//
//  Event+CoreDataProperties.swift
//  Guiamigo
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData


extension Event {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Event> {
        return NSFetchRequest<Event>(entityName: "Event");
    }

    @NSManaged public var name: String?
    @NSManaged public var start: NSDate?
    @NSManaged public var end: NSDate?
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var host: User?

}
