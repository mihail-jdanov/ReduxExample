//
//  TodoListView.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 25.03.2025.
//

import SwiftUI

struct TodoListView: View {
    
    @EnvironmentObject var store: AppStore
    
    var body: some View {
        List {
            ForEach(store.state.todoList.todos) { todo in
                HStack {
                    Text(todo.title)
                    Spacer()
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        .onTapGesture {
                            store.dispatch(.todoList(action: .toggleCompletion(todo.id)))
                        }
                }
            }
        }
        .navigationTitle("Todo List")
        .toolbar {
            NavigationLink("➕") {
                AddTodoView()
                    .environmentObject(store)
            }
        }
    }
    
}

#Preview {
    TodoListView()
}
