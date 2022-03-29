//
//  SubViewModel.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI

class SubViewModel: ObservableObject {
  @Binding var count: Int
  
  init(count: Binding<Int>) {
    self._count = count
  }
}
