asserting
shouldEndGame
	|sizeOrcUnits sizeHumanUnits|
	sizeHumanUnits := (activeGameBoard getUnitList numberOfUnitsOfPlayer: playerHuman).
	sizeOrcUnits := (activeGameBoard getUnitList numberOfUnitsOfPlayer: playerOrc).
	^( (sizeOrcUnits = 0) | (sizeHumanUnits = 0) | (activeGameBoard getUnitList isEmpty) |
	   (activeGameBoard getUnitList getList size = 1)  )
	
	