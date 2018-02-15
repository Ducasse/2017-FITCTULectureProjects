accessing
moveRight
	| distToNext |
	32 \\ velocity = 0
		ifFalse: [ x \\ 32 = 0
				ifFalse: [ distToNext := ((x / 32) asInteger + 1) * 32 - x.
					distToNext < velocity
						ifTrue: [ x := ((x / 32) asInteger + 1) * 32.
							^ self ] ] ].
	x := x + (1 * velocity).
	x := x round: 2.