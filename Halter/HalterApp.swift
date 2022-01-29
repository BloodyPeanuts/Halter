//
//  HalterApp.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/14/21.
//

import SwiftUI

@main
struct HalterApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
