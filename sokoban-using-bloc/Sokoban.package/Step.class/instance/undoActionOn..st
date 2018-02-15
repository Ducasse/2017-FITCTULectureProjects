undoing
undoActionOn: aLevel
	| playerBeforeMove playerAfterMove |
	playerAfterMove := aLevel player levelPos.
	playerBeforeMove := playerAfterMove + direction reverse.
	aLevel player levelPos: playerBeforeMove.
	playerBeforeMove cell putPlayer: aLevel player.
	playerAfterMove cell putEmpty