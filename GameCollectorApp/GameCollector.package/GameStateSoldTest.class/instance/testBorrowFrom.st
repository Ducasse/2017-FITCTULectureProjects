tests
testBorrowFrom
	| state state2 |
	state := GameStateSold toWho: 'aPerson' forWhat: 123.
	state2 := state borrowFrom: 'aPerson'.
	self assert: state2 equals: state.