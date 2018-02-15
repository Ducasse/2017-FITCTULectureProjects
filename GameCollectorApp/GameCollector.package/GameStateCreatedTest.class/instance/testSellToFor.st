tests
testSellToFor
	| state state2 |
	state := GameStateCreated new.
	state2 := state sellTo: 'AnotherPerson' For: 154.
	self assert: (GameStateSold) equals: state2 class.
	self assert: (state2 person) equals: 'AnotherPerson'.
	self assert: (state2 price) equals: 154.