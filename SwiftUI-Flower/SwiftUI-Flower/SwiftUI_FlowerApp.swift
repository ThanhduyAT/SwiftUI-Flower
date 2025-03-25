//
//  SwiftUI_FlowerApp.swift
//  SwiftUI-Flower
//
//  Created by Duy Thanh on 26/3/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_FlowerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            DaisyFlower()
        }
        .modelContainer(sharedModelContainer)
    }
}
