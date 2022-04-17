//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Metin Atalay on 16.04.2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
