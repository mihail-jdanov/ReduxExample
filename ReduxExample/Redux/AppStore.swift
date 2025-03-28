//
//  AppStore.swift
//  ReduxExample
//
//  Created by Михаил Жданов on 25.03.2025.
//

import Foundation
import Combine

typealias AppStore = Store<AppState, AppAction>

final class Store<State, Action>: ObservableObject {
    
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
        
    init(state: State, reducer: @escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
    }
    
}
