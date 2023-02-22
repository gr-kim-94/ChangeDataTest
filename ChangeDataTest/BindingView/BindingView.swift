//
//  BindingView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct BindingView: View {
    @State private var username: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack {
            ChildTextFieldView(username: $username, isFocused: $isFocused)
            ChildTextView(username: $username, isFocused: $isFocused)
            ChildButtonView(isFocused: $isFocused)
        }
        .background(Color.brown)
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
