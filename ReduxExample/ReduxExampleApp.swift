//
//  ReduxExampleApp.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 24.03.2025.
//

import SwiftUI

@main
struct ReduxExampleApp: App {
    
    let store = AppStore(state: .init(
        todoList: .init(),
        addTodo: .init()
    ), reducer: appReducer)
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TodoListView()
                    .environmentObject(store)
            }
        }
    }
    
}
