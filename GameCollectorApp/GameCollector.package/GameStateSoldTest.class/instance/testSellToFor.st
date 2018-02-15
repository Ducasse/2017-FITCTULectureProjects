tests
testSellToFor
	| state state2 |
	state := GameStateSold toWho: 'aPerson' forWhat: 123.
	state2 := state sellTo: 'anotherPerson' For: 456. 
	self assert: state2 equals: state.