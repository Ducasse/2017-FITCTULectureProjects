tests
testBorrowFrom
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state borrowFrom: 'AnotherPerson'.
	self assert: (state) equals: state2