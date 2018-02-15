tests
testValidTransitions
	| bag transitions |
	bag := Bag new add: GameStateBorrowed; add: GameStateBought; yourself.
	transitions := GameStateDesired new validTransitions.
	self assert: (bag) equals: transitions 