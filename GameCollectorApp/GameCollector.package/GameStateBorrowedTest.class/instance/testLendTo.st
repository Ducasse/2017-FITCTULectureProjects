tests
testLendTo
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state lendTo: 'AnotherPerson'.
	self assert: (state) equals: state2