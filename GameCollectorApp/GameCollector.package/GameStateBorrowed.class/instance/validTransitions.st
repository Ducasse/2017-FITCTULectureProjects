instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateBought; add: GameStateLost; yourself.
	^ bag