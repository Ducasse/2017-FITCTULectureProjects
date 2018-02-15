instance creation
validTransitions
	| bag |
	bag := Bag new add: GameStateLended; add: GameStateLost; add: GameStateSold; yourself.
	^ bag