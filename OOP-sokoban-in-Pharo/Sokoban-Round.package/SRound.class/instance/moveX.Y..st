navigation
moveX: x Y: y
	"player move"

	| tile0 tile1 tile2 no maybe yes validMove |
	"maybe means: box blocking us"
	no := 1.
	maybe := 2.
	yes := 3.

	"initialize tile 0 and tile 1"
	tile0 := map getObjectFromX: playerX Y: playerY.
	tile1 := map getObjectFromX: playerX + x Y: playerY + y.

	"check if move is valid"
	validMove := playerX + (2 * x) <= sizeX & (playerX + (2 * x) >= 1)
		& (playerY + (2 * y) <= sizeY) & (playerY + (2 * y) >= 1).
	validMove
		ifTrue:
			[ "initialize tile 2" tile2 := map getObjectFromX: playerX + (2 * x) Y: playerY + (2 * y) ].
	tile1 moveToMe = yes
		ifTrue: [ "change game objects"
			tile0 addObject: nil.	"remove player"
			tile1 addObject: SRMOPlayer new.	"add player"

			"draw move"
			graphicInstance redrawElementSokoOn: playerX + x And: playerY + y.
			graphicInstance redrawElementEmptyOn: playerX And: playerY.

			"cahnge game variables"
			win = false
			ifTrue: [sokoMoveCnt := sokoMoveCnt + 1.	"increment player move counter"].
			playerX := playerX + x.	"change player X position"
			playerY := playerY + y.	"change player Y position"
			stackOfMoves push: (SRMove withDirectionX: x Y: y) ].
	tile1 moveToMe = maybe
		ifTrue: [ validMove & (tile2 moveToMe = yes)
				ifTrue: [ "change game objects"
					tile0 addObject: nil.	"remove player"
					tile1 addObject: SRMOPlayer new.	"add player instead of box"
					tile2 addObject: SRMOBox new.	"add box"

					"draw game"
					graphicInstance redrawElementBoxOn: playerX + (2 * x) And: playerY + (2 * y).
					graphicInstance redrawElementSokoOn: playerX + x And: playerY + y.
					graphicInstance redrawElementEmptyOn: playerX And: playerY.

					"change game variables"
					(tile1 isMemberOf: SRTTarget) & (tile2 isMemberOf: SRTFloor)
						ifTrue: [ boxOnTargetCnt := boxOnTargetCnt - 1 ].	"box is removed from target"
					(tile1 isMemberOf: SRTFloor) & (tile2 isMemberOf: SRTTarget)
						ifTrue: [ boxOnTargetCnt := boxOnTargetCnt + 1 ].	"box is moved to target"
					win = false
					ifTrue: [sokoMoveCnt := sokoMoveCnt + 1.	"increment player move counter"
					boxMoveCnt := boxMoveCnt + 1.	"increment box move counter"].
					playerX := playerX + x.	"change player X position"
					playerY := playerY + y.	"change player Y position"
					stackOfMoves push: (SRMove withBoxAndDirectionX: x Y: y) ] ].
	graphicInstance setTextstrip: 'move!'.


	"self printRoundInTranscript."
	^ self returnCountersAndCheckWin