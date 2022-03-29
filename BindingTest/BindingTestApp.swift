//
//  BindingTestApp.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI

@main
struct BindingTestApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(viewModel: .init())
        }
    }
}
