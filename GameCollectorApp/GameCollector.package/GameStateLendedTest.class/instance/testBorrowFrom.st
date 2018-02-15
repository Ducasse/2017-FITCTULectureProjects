tests
testBorrowFrom
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLended toWho: 'Ales' prevState: prevState.
	state2 := state borrowFrom: 'AnotherPerson'.
	self assert: (state) equals: state2