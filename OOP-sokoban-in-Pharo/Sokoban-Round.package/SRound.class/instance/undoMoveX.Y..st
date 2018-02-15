navigation
undoMoveX: x Y: y
	"player undo move without box"

	| tile0 tile1 |
	"initialize tile 0 and tile 1"
	tile0 := map getObjectFromX: playerX Y: playerY.
	tile1 := map getObjectFromX: playerX - x Y: playerY - y.

	"change game objects"
	tile0 addObject: nil.	"remove player"
	tile1 addObject: SRMOPlayer new.	"add player"

	"draw move"
	graphicInstance redrawElementSokoOn: playerX - x And: playerY - y.
	graphicInstance redrawElementEmptyOn: playerX And: playerY.

	"change game variables"
	win = false
	ifTrue: [sokoMoveCnt := sokoMoveCnt - 1.	"decrement player move counter"].
	playerX := playerX - x.	"change player X position"
	playerY := playerY - y.	"change player Y position"

	"self printRoundInTranscript."
	^ self returnCountersAndCheckWin