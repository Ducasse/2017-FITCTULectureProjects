tests
testBuyFrom
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state buyFrom: 'AnotherPerson'.
	
	self assert: (state2 class) equals: GameStateBought.
	
	self assert: (state2 place) equals: 'AnotherPerson'