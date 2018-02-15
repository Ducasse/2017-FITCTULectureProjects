tests
testBorrowFrom
	| state state2 |
	state := GameStateDesired new.
	state2 := state borrowFrom: 'AnotherPerson'.
	self assert: (state2 class) equals: GameStateBorrowed.
	self assert: (state2 person) equals: 'AnotherPerson'