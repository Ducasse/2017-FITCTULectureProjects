tests
testSellToFor
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state sellTo: 'AnotherPerson' For: 154.
	self assert: (state) equals: state2