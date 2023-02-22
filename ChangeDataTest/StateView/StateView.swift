//
//  StateView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct StateView: View {
    @State private var username: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack {            
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
            
            Text(username)
                .foregroundColor(isFocused ? .red : .blue)
            
            Button("확인") {
                // iOS 15+
                isFocused = false
                
                // iOS 14 <= OS
//                hideKeyboard()
            }
        }
        .background(Color.gray)
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
