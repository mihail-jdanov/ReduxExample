//
//  AddTodoView.swift
//  ReduxExample
//
//  Created by Mikhail Zhdanov on 28/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import SwiftUI

struct AddTodoView: View {

    @EnvironmentObject var store: AppStore
    
    @Environment(\.dismiss) var dismiss
    
    @FocusState var isFieldFocused: Bool

    var body: some View {
        Form {
            TextField("What to do?", text: Binding(get: {
                store.state.addTodo.title
            }, set: { value in
                store.dispatch(.addTodo(action: .textChanged(value)))
            }))
            .focused($isFieldFocused)
            
            Button("Save") {
                dismiss()
                store.dispatch(.todoList(action: .addTodo(store.state.addTodo.title)))
                store.dispatch(.addTodo(action: .textChanged("")))
            }
            .disabled(store.state.addTodo.title.isEmpty)
        }
        .onAppear {
            isFieldFocused = true
        }
    }

}

#Preview {
    AddTodoView()
}
