tests
testSellToFor
	| prevState state state2 |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLended toWho: 'Ales' prevState: prevState.
	state2 := state sellTo: 'aPerson' For: 123.
	self assert: (state2 class) equals: GameStateSold.
	self assert: (state2 person) equals: 'aPerson'.
	self assert: (state2 price) equals: 123.