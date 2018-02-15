tests
testLose
	| state state2 |
	state := GameStateDesired new. 
	state2 := state lose.
	self assert: (state2) equals: state