GameLogic
getHitBy: aNumberOfHPLost
	health := health - aNumberOfHPLost.
	^(health > 0)
	
"removes hp of unit and returns if it still lives"