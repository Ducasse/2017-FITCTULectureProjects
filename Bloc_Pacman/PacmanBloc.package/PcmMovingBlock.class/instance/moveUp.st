accessing
moveUp
	32 \\ velocity = 0
		ifFalse: [ y \\ 32 = 0
				ifFalse: [ (y \\ 32) < velocity
						ifTrue: [ y := (y / 32) asInteger * 32. ^ self ] ] ].
	y := y - (1 * velocity).
	y := y round: 2.