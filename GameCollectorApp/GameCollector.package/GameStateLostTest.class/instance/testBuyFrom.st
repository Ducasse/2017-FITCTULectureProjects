tests
testBuyFrom
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLost previousState: prevState.
	state2 := state buyFrom: 'aPlace'.
	self assert: state2 equals: state.