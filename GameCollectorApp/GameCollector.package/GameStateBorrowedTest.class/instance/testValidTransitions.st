tests
testValidTransitions
	| bag transitions |
	bag := Bag new add: GameStateBought; add: GameStateLost; yourself.
	transitions := (GameStateBorrowed fromPerson: 'Ales') validTransitions.
	self assert: (bag) equals: transitions 