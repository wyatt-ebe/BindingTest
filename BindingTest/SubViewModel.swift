//
//  SubViewModel.swift
//  BindingTest
//
//  Created by Wyatt on 3/29/22.
//

import SwiftUI
import Combine

class SubViewModel: ObservableObject {
  var cancellables = Set<AnyCancellable>()
  
  @Binding var count: Int
  
  var countDirectString: String {
    return count.description
  }
  
  @Published var dumb: Int
  @Published var countString: String = ""
  
  init(count: Binding<Int>, change: ContentViewModel?) {
    self._count = count
    print("init SubViewModel")
    dumb = count.wrappedValue
    countString = count.wrappedValue.description

    change?.objectWillChange.sink {
      print("yoohoo")
      DispatchQueue.main.async {
        self.dumb = self.count
        self.countString = self.count.description
        self.objectWillChange.send()
      }
    }
    .store(in: &cancellables)
  }
  
  func increaseCount() {
    count += 1
    dumb = count
    countString = count.description
  }
  
  func decreaseCount() {
    count -= 1
    dumb = count
    countString = count.description
  }
}
