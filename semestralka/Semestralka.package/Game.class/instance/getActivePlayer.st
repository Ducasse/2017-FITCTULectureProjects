gameFlow
getActivePlayer

	| playerOnTurn nextUnitOnTurn currentUnitOnTurn |
	currentUnitOnTurn := activeGameBoard getUnitList onTurn.
	nextUnitOnTurn    := activeGameBoard getUnitList nextTurn. "set next unit in unitList"
	
	[ activeGameBoard isCurrentUnitUnableAttack &
	  activeGameBoard isCurrentUnitUnableMove   &
	  (currentUnitOnTurn ~= nextUnitOnTurn) ] whileTrue:
		[ nextUnitOnTurn := activeGameBoard getUnitList nextTurn. ].
	
	( currentUnitOnTurn = nextUnitOnTurn ) ifTrue: [ ^ self endGame].
		
	playerOnTurn      := nextUnitOnTurn playerOwner.
	activePlayer      := playerOnTurn.