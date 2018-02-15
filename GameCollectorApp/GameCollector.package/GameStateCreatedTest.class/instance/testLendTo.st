tests
testLendTo
	| state state2 |
	state := GameStateCreated new.
	state2 := state lendTo: 'AnotherPerson'.
	self assert: (state) equals: state2.
	