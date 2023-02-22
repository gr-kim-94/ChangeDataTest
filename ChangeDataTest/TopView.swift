//
//  TopView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

struct TopView: View {
    @Binding var selection: Int
    @Binding var tapType: TabSelectionType
    
    var body: some View {
        VStack {
            Text(tapType.value)
                .font(.title)
            HStack {
                Button {
                    switch tapType {
                    case .state:
                        break
                    case .binding:
                        selection = TabSelectionType.state.rawValue
                    case .observed:
                        selection = TabSelectionType.binding.rawValue
                    }
                } label: {
                    Image(systemName: "arrowshape.left.fill")
                }
                .disabled(selection == TabSelectionType.state.rawValue)
                Spacer()
                Button {
                    switch tapType {
                    case .state:
                        selection = TabSelectionType.binding.rawValue
                    case .binding:
                        selection = TabSelectionType.observed.rawValue
                    case .observed:
                        break
                    }
                } label: {
                    Image(systemName: "arrowshape.right.fill")
                }
                .disabled(selection == TabSelectionType.observed.rawValue)
            }
            .padding(16.0)
        }
    }
}
