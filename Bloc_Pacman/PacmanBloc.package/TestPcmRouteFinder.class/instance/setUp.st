initialization
setUp
	| ios currentLine mapView tmpmap |
	tmpmap := PcmMap new.
	ios := FileStream oldFileNamed: 'map.txt'.
	tmpmap columnsCnt: ios nextLine asNumber.
	tmpmap rowsCnt: ios nextLine asNumber.
	1 to: tmpmap rowsCnt do: [ :i | 
		currentLine := ios nextLine.
		1 to: tmpmap columnsCnt do: [ :j | 
			(currentLine at: j) = $1
				ifTrue: [ tmpmap addBlock: PcmWall new ].
			(currentLine at: j) = $3
				ifTrue: [ tmpmap
						addBlock:
							(PcmCoridor new
								item: PcmSmallDot new;
								yourself) ].
			(currentLine at: j) = $4
				ifTrue: [ tmpmap
						addBlock:
							(PcmCoridor new
								item: PcmBigDot new;
								yourself) ].
			(currentLine at: j) = $0
				ifTrue: [ tmpmap addBlock: PcmCoridor new ].
			(currentLine at: j) = $2
				ifTrue: [ tmpmap addBlock: PcmGhostDoor new ] ] ].
	ios close.
	mapView := PcmMapView new mapModel: tmpmap.
	map := tmpmap.