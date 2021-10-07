//
//  Note.swift
//  AerialWorld
//
//  Created by Марина Михайлова on 04.08.2020.
//  Copyright © 2020 Majestic. All rights reserved.
//

import Foundation
import CoreData
public class Note: NSManagedObject, Identifiable {
   @NSManaged public var textField: String
    @NSManaged public var createdAt: Date
}
extension Note {
    static func getAllNote() -> NSFetchRequest<Note> {
    let request: NSFetchRequest<Note> = Note.fetchRequest() as! NSFetchRequest<Note>
        let sortDescription = NSSortDescriptor(key: "textField", ascending: true)
        request.sortDescriptors = [sortDescription]
    return request
    }
}
