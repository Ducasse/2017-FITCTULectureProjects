tests
testLose
	| state state2 |
	state := GameStateBought fromWhere: 'JRC'.
	state2 := state lose.
	
	self assert: (state2 class) equals: GameStateLost.
	self assert: (state2 previousState) equals: state