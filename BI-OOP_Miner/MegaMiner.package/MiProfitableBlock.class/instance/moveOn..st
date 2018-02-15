manage move
moveOn: aMiner
	(self tryMove: aMiner)
	ifTrue:
	[
		self loadCargo: aMiner.
		^ MiMoveAndMineResponse new
	].
	^ MiCannotMoveResponse new