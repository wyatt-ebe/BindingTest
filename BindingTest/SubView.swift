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
    Text("Count: \(viewModel.count)")
      .padding()
  }
}

struct SubView_Previews: PreviewProvider {
  static var previews: some View {
    SubView(viewModel: .init(count: .init(get: { return 0 }, set: { newValue in })))
  }
}
