//
//  SparkleTestApp.swift
//  SparkleTest
//
//  Created by Stefan Horner on 10/11/2025.
//

import SwiftUI
import Sparkle

@main
struct SparkleTestApp: App {
    let controller: SPUStandardUpdaterController

    init() {
        controller = SPUStandardUpdaterController(
            startingUpdater: true,
            updaterDelegate: SparkleyDelegate(),
            userDriverDelegate: nil,
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }.commands {
            CommandGroup(after: .appInfo) {
                Button("Check for Updates…", action: controller.updater.checkForUpdates)
                    .keyboardShortcut("u", modifiers: .command)
            }
        }
    }
}
