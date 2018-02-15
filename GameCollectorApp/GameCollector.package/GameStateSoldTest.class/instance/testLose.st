tests
testLose
	| state state2 |
	state := GameStateSold toWho: 'aPerson' forWhat: 123.
	state2 := state lose.
	self assert: state2 equals: state.