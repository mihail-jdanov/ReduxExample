//
//  AppReducer.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 25.03.2025.
//

import Foundation

typealias Reducer<State, Action> = (inout State, Action) -> Void

func appReducer(state: inout AppState, action: AppAction) {
    switch action {
    case .todoList(let action):
        todoListReducer(state: &state.todoList, action: action)
    case .addTodo(let action):
        addTodoReducer(state: &state.addTodo, action: action)
    }
}
