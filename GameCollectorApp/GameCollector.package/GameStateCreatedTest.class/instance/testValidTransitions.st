tests
testValidTransitions
	| bag transitions |
	bag := Bag new add: GameStateBorrowed; add: GameStateBought; add: GameStateDesired; add: GameStateSold; yourself.
	transitions := GameStateCreated new validTransitions.
	self assert: (bag) equals: transitions 