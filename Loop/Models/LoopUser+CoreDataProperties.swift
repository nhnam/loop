//
//  LoopUser+CoreDataProperties.swift
//  
//
//  Created by ナム Nam Nguyen on 6/12/17.
//
//

import Foundation
import CoreData


extension LoopUser {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoopUser> {
        return NSFetchRequest<LoopUser>(entityName: "LoopUser")
    }

    @NSManaged public var accessToken: String?
    @NSManaged public var email: String?
    @NSManaged public var facebookId: String?
    @NSManaged public var lastAccess: NSDate?
    @NSManaged public var name: String?
    @NSManaged public var userId: String?

}
