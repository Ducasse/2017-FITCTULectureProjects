instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateBorrowed; add: GameStateBought; yourself.
	^ bag