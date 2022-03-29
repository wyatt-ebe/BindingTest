//
//  ContentViewModel.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI

class ContentViewModel: ObservableObject {
  @Published var count: Int
  
  init() {
    count = 0
  }
  
  func increaseCount() {
    count += 1
  }
  
  func decreaseCount() {
    count -= 1
  }
}
