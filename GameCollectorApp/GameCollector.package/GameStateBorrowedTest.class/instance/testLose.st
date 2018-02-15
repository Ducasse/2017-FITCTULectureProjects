tests
testLose
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state lose.
	
	self assert: (state2 class) equals: GameStateLost.
	self assert: (state2 previousState) equals: state