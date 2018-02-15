accessing
moveLeft
	32 \\ velocity = 0
		ifFalse: [ x \\ 32 = 0
				ifFalse: [ (x \\ 32) < velocity
						ifTrue: [ x := (x / 32) asInteger * 32. ^ self ] ] ].
	x := x - (1 * velocity).
	x := x round: 2.