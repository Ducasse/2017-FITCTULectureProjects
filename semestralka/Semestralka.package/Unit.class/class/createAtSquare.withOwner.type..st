construction
createAtSquare: aSquare withOwner: aPlayer type: aUnitType.
	^ self new
		playerOwner: aPlayer;
		unitType: aUnitType;
		square: aSquare;
		yourself.