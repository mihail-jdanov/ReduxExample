//
//  AddTodoReducer.swift
//  ReduxExample
//
//  Created by Mikhail Zhdanov on 28/03/2025.
//  Copyright © 2025 EPS. All rights reserved.
//

import Foundation

func addTodoReducer(state: inout AddTodoState, action: AddTodoAction) {
    switch action {
    case .textChanged(let text):
        state.title = text
    }
}
