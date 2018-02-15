tests
testLendTo
	| state state2 |
	state := GameStateBought fromWhere: 'JRC'.
	state2 := state lendTo: 'AnotherPerson'.
	self assert: (GameStateLended ) equals: state2 class.
	self assert: (state2 person ) equals: 'AnotherPerson'.
	