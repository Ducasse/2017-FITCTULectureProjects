doing
doActionOn: aLevel
	| playerFrom playerTo boxTo |
	playerFrom := aLevel player levelPos.
	playerTo := playerFrom + direction.
	boxTo := playerTo + direction.
	aLevel player levelPos: playerTo.
	playerFrom cell putEmpty.
	playerTo cell putPlayer: aLevel player.
	boxTo cell putBox