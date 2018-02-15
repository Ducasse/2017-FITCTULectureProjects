tests
testBorrowFrom
	| state state2 |
	state := GameStateBought fromWhere: 'JRC'.
	state2 := state borrowFrom: 'AnotherPerson'.
	self assert: (state) equals: state2