tests
testLendTo
	| state state2 |
	state := GameStateDesired new.
	state2 := state lendTo: 'AnotherPerson'.
	self assert: (state ) equals: state2 
	