manage move
moveOn: aMiner
	(self tryMove: aMiner)
		ifTrue: [	^ MiMoveAndMineResponse new].
	^ MiCannotMoveResponse new