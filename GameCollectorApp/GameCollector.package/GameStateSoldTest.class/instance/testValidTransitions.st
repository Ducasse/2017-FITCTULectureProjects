tests
testValidTransitions
	| bag bag2|
	bag := (GameStateSold toWho: 'aPerson' forWhat: 123) validTransitions.
	bag2 := Bag new add: GameStateBought; add: GameStateDesired; yourself.
	self assert: bag equals: bag2