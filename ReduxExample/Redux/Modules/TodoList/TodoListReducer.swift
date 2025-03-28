//
//  TodoListReducer.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 25.03.2025.
//

import Foundation

func todoListReducer(state: inout TodoListState, action: TodoListAction) {
    switch action {
    case .addTodo(let todoTitle):
        let todo = Todo(title: todoTitle)
        state.todos.append(todo)
    case .toggleCompletion(let id):
        if let index = state.todos.firstIndex(where: { $0.id == id }) {
            state.todos[index].isCompleted.toggle()
        }
    }
}
