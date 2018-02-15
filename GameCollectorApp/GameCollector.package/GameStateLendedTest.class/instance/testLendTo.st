tests
testLendTo
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLended toWho: 'Ales' prevState: prevState.
	state2 := state lendTo: 'AnotherPerson'.
	self assert: (state) equals: state2