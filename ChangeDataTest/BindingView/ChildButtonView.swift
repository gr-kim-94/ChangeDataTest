//
//  ChildButtonView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct ChildButtonView: View {
    @FocusState<Bool>.Binding var isFocused: Bool
    
    var body: some View {
        Button("확인") {
            // iOS 15+
            isFocused = false
            
            // iOS 14 <= OS
//                hideKeyboard()
        }
    }
}

struct ChildButtonView_Previews: PreviewProvider {
    @FocusState static var isFocused: Bool
    
    static var previews: some View {
        ChildButtonView(isFocused: $isFocused)
    }
}
