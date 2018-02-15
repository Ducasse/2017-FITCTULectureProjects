manage move
moveOn: aMiner
	(self tryMove: aMiner)
		ifTrue: [^ MiMoveResponse new].
	^ MiCannotMoveResponse new