searching in game board
isGameOver
	self getUnitList playerList
		do: [ :player | 
			(self getUnitList numberOfUnitsOfPlayer: player) < 1
				ifTrue: [ ^ true ] ].
	^ false