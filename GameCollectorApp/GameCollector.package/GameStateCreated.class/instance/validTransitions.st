instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateBorrowed; add: GameStateBought; add: GameStateDesired; add: GameStateSold; yourself.
	^ bag