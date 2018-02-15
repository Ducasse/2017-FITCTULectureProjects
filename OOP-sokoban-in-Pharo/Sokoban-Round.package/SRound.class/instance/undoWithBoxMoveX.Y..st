navigation
undoWithBoxMoveX: x Y: y
	"player undo move with box"

	| tile0 tile1 tile2 |
	"initialize tile 0, tile 1 and tile 2"
	tile0 := map getObjectFromX: playerX - x Y: playerY - y.
	tile1 := map getObjectFromX: playerX Y: playerY.
	tile2 := map getObjectFromX: playerX + x Y: playerY + y.

	"change game objects"
	tile0 addObject: SRMOPlayer new.	"add player"
	tile1 addObject: SRMOBox new.	"add box instead of player"
	tile2 addObject: nil.	"remove box"

	"draw move"
	graphicInstance redrawElementSokoOn: playerX - x And: playerY - y.
	graphicInstance redrawElementBoxOn: playerX And: playerY.
	graphicInstance redrawElementEmptyOn: playerX + x And: playerY + y.

	"change game variables"
	(tile1 isMemberOf: SRTTarget) & (tile2 isMemberOf: SRTFloor)
		ifTrue: [ boxOnTargetCnt := boxOnTargetCnt + 1 ].	"move box back to target"
	(tile1 isMemberOf: SRTFloor) & (tile2 isMemberOf: SRTTarget)
		ifTrue: [ boxOnTargetCnt := boxOnTargetCnt - 1 ].	"move box back from target"
	win = false
	ifTrue: [sokoMoveCnt := sokoMoveCnt - 1.	"decrement player move counter"
	boxMoveCnt := boxMoveCnt - 1.	"decrement box move counter"].
	playerX := playerX - x.	"change player X position"
	playerY := playerY - y.	"change player Y position"

	"self printRoundInTranscript."
	^ self returnCountersAndCheckWin