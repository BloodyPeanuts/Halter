//
//  dataController.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/28/21.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "halter")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
