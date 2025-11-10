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
//        dump(updater)
        return nil
    }

    func updater(_ updater: SPUUpdater, willDownloadUpdate item: SUAppcastItem, with request: NSMutableURLRequest) {
        print("willDownloadUpdate")
        print(updater)
    }

}
