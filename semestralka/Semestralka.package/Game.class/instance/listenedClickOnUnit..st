listeners
listenedClickOnUnit: square
	| playerClickOnHisCurrentUnit playerClickOnEnemyUnit |
	
	"if human with mouse is not on turn ingore clickEvent"
	(humanOnTurn ) ifFalse: [ ^self ].
	
	playerClickOnHisCurrentUnit := (activeGameBoard getUnitList onTurn = square getObject).
	playerClickOnEnemyUnit  := activeGameBoard validAttackToSquare: square.
	
	(playerClickOnHisCurrentUnit | playerClickOnEnemyUnit )
		ifTrue:
			[ self humanOnTurn: false.
			self activeGameBoard attackWithCurrentUnitOnSquare: square.
			self prepareMove ].
	
	