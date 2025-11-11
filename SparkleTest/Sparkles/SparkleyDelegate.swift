//
//  SparkleyDelegate.swift
//  SparkleTest
//
//  Created by Stefan Horner on 10/11/2025.
//

import Foundation
import Sparkle

class SparkleyDelegate: NSObject, SPUUpdaterDelegate {
    func feedURLString(for updater: SPUUpdater) -> String? {
        print("feedURLString")
        return nil
    }

    func updater(_ updater: SPUUpdater, willDownloadUpdate item: SUAppcastItem, with request: NSMutableURLRequest) {
        print("willDownloadUpdate")
        fatalError("this should happen")
    }

    func updater(_ updater: SPUUpdater, failedToDownloadUpdate item: SUAppcastItem, error: any Error) {
        print("failedToDownloadUpdate")
    }

    func updater(_ updater: SPUUpdater, mayPerform updateCheck: SPUUpdateCheck) throws {
        print("mayPerformUpdateCheck")
    }

    func allowedChannels(for updater: SPUUpdater) -> Set<String> {
        []
    }

    func updater(_ updater: SPUUpdater, didFinishLoading appcast: SUAppcast) {
        print("didFinishLoadingAppcast")
    }

    func updater(_ updater: SPUUpdater, didFindValidUpdate item: SUAppcastItem) {
        print("didFindValidUpdate")
    }
}
