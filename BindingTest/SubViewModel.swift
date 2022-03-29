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
  
  var countString: String = ""
  
  var countDirectString: String {
    return count.description
  }
  
  @Published var dumb: Int
  
  init(count: Binding<Int>, change: ObjectWillChangePublisher?) {
    self._count = count
    dumb = count.wrappedValue

    change?.sink {
      self.objectWillChange.send()
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
