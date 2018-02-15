tests
testWant
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLost previousState: prevState.
	state2 := state want.
	self assert: state2 equals: state.