//
//  Users+CoreDataProperties.swift
//  CoreDataAppSample
//
//  Created by alumincan on 2017/11/21.
//  Copyright © 2017年 sample. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var age: Int16

}
