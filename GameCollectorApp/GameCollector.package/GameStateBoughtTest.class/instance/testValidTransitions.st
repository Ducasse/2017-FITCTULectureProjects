tests
testValidTransitions
	| bag transitions |
	bag := Bag new add: GameStateLended; add: GameStateLost; add: GameStateSold; yourself.
	transitions := (GameStateBought fromWhere: 'JRC') validTransitions.
	self assert: (bag) equals: transitions 