//
//  AppAction.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 24.03.2025.
//

import Foundation

enum AppAction {
    
    case todoList(action: TodoListAction)
    case addTodo(action: AddTodoAction)
    
}
