initialization
unitsOfPlayer: aPlayer
	^ linkedList select: [ :aUnit |
		aUnit playerOwner = aPlayer ]