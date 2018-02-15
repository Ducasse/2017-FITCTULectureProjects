instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateLost; add: GameStateSold; yourself.
	^ bag