//
//  Reducer.swift
//  TestReSwift
//
//  Created by Naoyuki Kan on 2021/04/05.
//

import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState{
	var state = state ?? AppState()

	switch action {
	case is CounterActionIncrease:
		state.counter += 1
	case is CounterAcitonDecrease:
		state.counter -= 1
	default:
		break
	}
	return state
}
