generator
generateMinesExceptX: xVal ExceptY: yVal
	"Add mines at random places to the board. Quantity depends on 'self mines'."

	"Validate mines quantity"
	BoardException new validateMinesQuantityBoardX: x BoardY: y Value: mines.
	"Validate click tile"
	BoardException new validateCoordinateBoardX: x BoardY: y X: xVal Y: yVal.
	
	1 to: (self mines) do: [ :i | 
		| xRand yRand |
		"Random place"
		xRand := x atRandom.
		yRand := y atRandom.
		
		"New coordinate should be empty and out of user exception."
		[ ((self getTileAtX: xRand Y: yRand) isTileMine ) | ((yRand == yVal) & (xRand == xVal)) ] whileTrue: [ 
			xRand := x atRandom.
			yRand := y atRandom.
			].
		
		"Place a mine"
		self setMineAtX: xRand Y: yRand.
	].
