//
//  FavPic+CoreDataProperties.swift
//  WIPrac
//
//  Created by Bettina on 4/5/17.
//  Copyright © 2017 Bettina Prophete. All rights reserved.
//

import Foundation
import CoreData


extension FavPic {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavPic> {
        return NSFetchRequest<FavPic>(entityName: "FavPic");
    }

    @NSManaged public var id: String?
    @NSManaged public var savedAt: NSDate?
    @NSManaged public var picture: NSObject?

}
