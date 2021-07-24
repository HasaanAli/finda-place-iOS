//
//  FindaPlaceApp.swift
//  FindaPlace
//
//  Created by Hasaan Ali on 17/07/2021.
//

import SwiftUI

@main
struct FindaPlaceApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DiscoverViewModel())
        }
    }
}
