actions
uncovered
	uncoveredFieldsCount := uncoveredFieldsCount + 1.
	(((gameProps size x) * (gameProps size y)) - gameProps mineCount) = uncoveredFieldsCount ifTrue: [ 
		"We have won"
		self announcer announce: MSGameWinAnnoucement new.
	]