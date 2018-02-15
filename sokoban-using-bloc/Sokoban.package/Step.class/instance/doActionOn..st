doing
doActionOn: aLevel
	| playerFrom playerTo |
	playerFrom := aLevel player levelPos.
	playerTo := playerFrom + direction.
	aLevel player levelPos: playerTo.
	playerFrom cell putEmpty.
	playerTo cell putPlayer: aLevel player