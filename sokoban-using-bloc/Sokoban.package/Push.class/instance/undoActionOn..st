undoing
undoActionOn: aLevel
	| playerBeforeMove playerAfterMove boxAfterMove |
	playerAfterMove := aLevel player levelPos.
	boxAfterMove := playerAfterMove + direction.
	playerBeforeMove := playerAfterMove + direction reverse.
	aLevel player levelPos: playerBeforeMove.
	playerBeforeMove cell putPlayer: aLevel player.
	playerAfterMove cell putBox.
	boxAfterMove cell putEmpty