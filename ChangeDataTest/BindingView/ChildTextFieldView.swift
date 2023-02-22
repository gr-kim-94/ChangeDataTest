//
//  ChildTextFieldView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct ChildTextFieldView: View {
    @Binding var username: String
    @FocusState<Bool>.Binding var isFocused: Bool
    
    var body: some View {
        TextField(
            "User name",
            text: $username
        )
        .focused($isFocused)
        .onSubmit {
            // 사용자가 완성된 항목을 텍스트 필드에 제출할 때
            print("onSubmit")
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true) // 자동 수정 비활성화
        .border(.secondary)
        .padding(16.0)
    }
}

struct ChildTextFieldView_Previews: PreviewProvider {
    @State static var username = "test"
    @FocusState static var isFocused: Bool
    
    static var previews: some View {
        ChildTextFieldView(username: $username, isFocused: $isFocused)
    }
}
