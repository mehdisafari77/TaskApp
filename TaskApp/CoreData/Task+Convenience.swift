//
//  Task+Convenience.swift
//  TaskApp
//
//  Created by Mehdi MMS on 28/02/2022.
//

import CoreData

extension Task {
    @discardableResult convenience init(name: String, notes: String?, dueDate: Date?, isComplete: Bool = false, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        self.isComplete = isComplete
    }
}
