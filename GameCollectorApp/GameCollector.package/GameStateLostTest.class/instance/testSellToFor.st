tests
testSellToFor
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLost previousState: prevState.
	state2 := state sellTo: 'aPerson' For: 154.
	self assert: state2 equals: state.