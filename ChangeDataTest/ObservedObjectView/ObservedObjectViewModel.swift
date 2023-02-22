//
//  ObservedObjectViewModel.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import Foundation
import Combine

class ObservedObjectViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    
    init() {
    }
}
