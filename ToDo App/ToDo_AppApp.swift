//
//  ToDo_AppApp.swift
//  ToDo App
//
//  Created by Maya Ghamloush on 19/03/2024.
//

import SwiftUI

@main
struct ToDo_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
