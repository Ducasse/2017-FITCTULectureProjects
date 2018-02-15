initialization
initGameFromReceivedMap
	"initialization - called automatically from init"

	| symbol element |
	"set sizes"
	sizeX := receivedMap sizeX.	"X size of game plan (number of rows)"
	sizeY := receivedMap sizeY.	"Y size of game plan (number of collumns)"

	"initialize counters"
	sokoMoveCnt := 0.
	boxMoveCnt := 0.
	boxCnt := 0.
	boxOnTargetCnt := 0.

	"initialize stack of moves"
	stackOfMoves := SRStackOfMoves new.

	"create game map from received map"
	map := SRMap withSizeX: sizeX Y: sizeY.
	1 to: sizeX do: [ :x | 
		1 to: sizeY do: [ :y | 
			symbol := receivedMap getObjectFromX: x Y: y.
			symbol = $B
				ifTrue: [ map addObject: SRTBackground new toX: x Y: y ].
			symbol = $W
				ifTrue: [ map addObject: SRTWall new toX: x Y: y ].
			symbol = $F
				ifTrue: [ map addObject: SRTFloor new toX: x Y: y ].
			symbol = $K
				ifTrue: [ element := SRTFloor new.
					element addObject: SRMOBox new.
					map addObject: element toX: x Y: y.
					boxCnt := boxCnt + 1 ].
			symbol = $P
				ifTrue: [ element := SRTFloor new.
					element addObject: SRMOPlayer new.
					map addObject: element toX: x Y: y.
					playerX := x.
					playerY := y ].
			symbol = $T
				ifTrue: [ element := SRTTarget new.
					map addObject: element toX: x Y: y ].
			symbol = $L
				ifTrue: [ element := SRTTarget new.
					element addObject: SRMOBox new.
					map addObject: element toX: x Y: y.
					boxCnt := boxCnt + 1.
					boxOnTargetCnt := boxOnTargetCnt + 1 ].
			symbol = $R
				ifTrue: [ element := SRTTarget new.
					element addObject: SRMOPlayer new.
					map addObject: element toX: x Y: y ] ] ].
	boxOnTargetCnt = boxCnt
		ifTrue: [ win := true ]
		
		ifFalse: [ win := false ]