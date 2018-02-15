tests
testBuyFrom
	| state state2 |
	state := GameStateBought fromWhere: 'JRC'.
	state2 := state buyFrom: 'AnotherPerson'.
	
	self assert: (state2) equals: state.
	