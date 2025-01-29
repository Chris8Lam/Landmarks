//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ping on 1/27/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
	@State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(modelData)
        }
    }
}
