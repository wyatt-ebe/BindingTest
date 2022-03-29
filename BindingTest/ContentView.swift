//
//  ContentView.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel: ContentViewModel
  var body: some View {
    VStack(spacing: 12) {
      Text("Primary Count: \(viewModel.count)")
      subView
      Button("Increase") {
        viewModel.increaseCount()
      }
      Button("Decrease") {
        viewModel.decreaseCount()
      }
    }
  }
  
  var subView: some View {
    SubView(viewModel: .init(count: $viewModel.count))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(viewModel: .init())
  }
}
