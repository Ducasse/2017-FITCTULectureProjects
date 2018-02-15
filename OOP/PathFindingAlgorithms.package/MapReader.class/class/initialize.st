initialization
initialize
	mapping :=
		{ 
			$. -> WallTile.
			$X -> EmptyTile.
			$S -> StartTile.
			$F -> FinishTile.
			$V -> VisitedTile.
		} asDictionary.