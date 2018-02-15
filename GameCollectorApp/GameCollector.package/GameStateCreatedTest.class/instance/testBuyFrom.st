tests
testBuyFrom
	| state state2 |
	state := GameStateCreated new.
	state2 := state buyFrom: 'aPlace'.
	self assert: (state2 class) equals: GameStateBought.
	self assert: (state2 place) equals: 'aPlace'