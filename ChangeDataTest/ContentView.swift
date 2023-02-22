//
//  ContentView.swift
//  ChangeDataTest
//
//  Created by 김가람 on 2023/02/22.
//

import SwiftUI

enum TabSelectionType: Int {
    case state = 0
    case binding
    case observed
    
    var value: String {
        switch self {
        case .state:
            return "State View"
        case .binding:
            return "Binding View"
        case .observed:
            return "Observed Object View"
        }
    }
}

struct ContentView: View {
    @State private var selection: Int = 0
    @State private var tapType: TabSelectionType = .state
    
    var body: some View {
        VStack {
            TopView(selection: $selection, tapType: $tapType)
            
            TabView(selection: $selection) {
                StateView()
                    .tabItem {
                        Text(TabSelectionType.state.value)
                    }
                    .tag(TabSelectionType.state.rawValue)
                BindingView()
                    .tabItem {
                        Text(TabSelectionType.binding.value)
                    }
                    .tag(TabSelectionType.binding.rawValue)
                ObservedObjectView()
                    .tabItem {
                        Text(TabSelectionType.observed.value)
                    }
                    .tag(TabSelectionType.observed.rawValue)
            }
            .font(.headline)
            .onChange(of: selection) { newValue in
                tapType = TabSelectionType(rawValue: newValue) ?? .state
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
