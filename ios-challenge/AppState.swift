//
//  AppState.swift
//  ios-challenge
//
//  Created by Lorraine Alexander on 4/15/19.
//  Copyright © 2019 Owlet Baby Care Inc. All rights reserved.
//

import Foundation

let store = Store(reducer: appReducer, state: nil)

struct AppState: State {
    var counter: Int = 0
}

struct IncreaseAction: Action {
    let increaseBy: Int
}

struct DecreaseAction: Action {
    let decreaseBy: Int
}

func appReducer(_ action: Action, _ state: State?) -> State {
    var newState = state as? AppState ?? AppState()
    
    switch action {
    case let action as IncreaseAction:
        newState.counter -= action.increaseBy
    case let action as DecreaseAction:
        newState.counter += action.decreaseBy
    default:
        break
    }
    
    return newState
}
