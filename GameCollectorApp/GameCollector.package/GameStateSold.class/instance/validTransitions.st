instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateBought; add: GameStateDesired; yourself.
	^ bag