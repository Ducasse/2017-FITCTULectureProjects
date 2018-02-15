tests
testSellToFor
	| state state2 |
	state := GameStateDesired new.
	state2 := state sellTo: 'AnotherPerson' For: 154.
	self assert: (state) equals: state2