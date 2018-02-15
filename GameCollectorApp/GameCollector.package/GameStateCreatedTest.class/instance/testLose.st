tests
testLose
	| state state2 |
	state := GameStateCreated new.
	state2 := state lose.
	self assert: (state) equals: state