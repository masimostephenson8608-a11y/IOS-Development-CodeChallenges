//
//  ST18____CoreData_Debug____Debugging__CoreDataApp.swift
//  ST18 - 'CoreData Debug' - Debugging, CoreData
//
//  Created by Jane Madsen on 6/7/24.
//

import SwiftUI

@main
struct ST18____CoreData_Debug____Debugging__CoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
