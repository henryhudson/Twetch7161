//
//  Twetch7161App.swift
//  Twetch7161
//
//  Created by Henry Hudson on 01/07/2020.
//

import SwiftUI

@main
struct Twetch7161App: App {
    @StateObject var notificationCenter = NotificationCenter()
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    var body: some Scene {
        WindowGroup {
            //TestingForEachForAllResponseData()
            //NotificationStuff(notificationCenter: notificationCenter)
            //ContentView()
            TestingForEachForAllResponseData()
        }
    }
}
