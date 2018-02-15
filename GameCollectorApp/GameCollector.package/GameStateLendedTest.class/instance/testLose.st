tests
testLose
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLended toWho: 'Ales' prevState: prevState.
	state2 := state lose.
	self assert: (state2 class) equals: GameStateLost.
	self assert: (state2 previousState) equals: state