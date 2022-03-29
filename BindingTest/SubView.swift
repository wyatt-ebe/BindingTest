//
//  SubView.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI

struct SubView: View {
  @StateObject var viewModel: SubViewModel
  
  var body: some View {
    VStack(spacing: 12) {
      Text("Count: \(viewModel.count)")
      Text("CountDirectString: \(viewModel.countDirectString)")
      Text("CountString: \(viewModel.countString)")
      Text("Dumb: \(viewModel.dumb)")
      Button("Sub Increase") {
        viewModel.increaseCount()
      }
      Button("Sub Decrease") {
        viewModel.decreaseCount()
      }
    }
  }
}

struct SubView_Previews: PreviewProvider {
  static var _index: Int = 0
  
  static var index: Binding<Int> = .init(
    get: {
      return _index
    },
    set: { int in
      _index = int
    }
  )
  
  static var previews: some View {
    SubView(viewModel: .init(count: index, change: nil))
  }
}
