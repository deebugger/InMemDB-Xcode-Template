//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import CoreData

class ___FILEBASENAMEASIDENTIFIER___ {
    
    static var context: NSManagedObjectContext!  {
        let mom = NSManagedObjectModel.mergedModelFromBundles(nil)!
        let psc = NSPersistentStoreCoordinator(managedObjectModel: mom)
        
        do {
            try psc.addPersistentStoreWithType(
                NSInMemoryStoreType,
                configuration: nil,
                URL: nil,
                options: nil)
        } catch let error {
            print("Error creating a persistent store for an in-memory DB (Error: \(error))")
            return nil
        }
        
        let context = NSManagedObjectContext.init(concurrencyType: .PrivateQueueConcurrencyType)
        context.persistentStoreCoordinator = psc

        return context
    }

}
