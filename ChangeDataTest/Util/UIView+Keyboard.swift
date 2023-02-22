//
//  UIView+Keyboard.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
