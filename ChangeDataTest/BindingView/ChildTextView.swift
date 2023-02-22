//
//  ChildTextView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct ChildTextView: View {
    @Binding var username: String
    @FocusState<Bool>.Binding var isFocused: Bool
    
    var body: some View {
        Text(username)
            .foregroundColor(isFocused ? .red : .blue)
    }
}

struct ChildTextView_Previews: PreviewProvider {
    @State static var username = "test"
    @FocusState static var isFocused: Bool
    
    static var previews: some View {
        ChildTextView(username: $username, isFocused: $isFocused)
    }
}
