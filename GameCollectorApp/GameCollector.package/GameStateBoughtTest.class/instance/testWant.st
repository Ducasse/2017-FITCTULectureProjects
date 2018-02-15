tests
testWant
	| state state2 |
	state := GameStateBought fromWhere: 'JRC'.
	state2 := state want.
	self assert: (state) equals: state2