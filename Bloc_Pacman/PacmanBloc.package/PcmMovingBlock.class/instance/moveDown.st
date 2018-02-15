accessing
moveDown
	| distToNext |
	32 \\ velocity = 0
		ifFalse: [ y \\ 32 = 0
				ifFalse: [ distToNext := ((y / 32) asInteger + 1) * 32 - y.
					distToNext < velocity
						ifTrue: [ y := ((y / 32) asInteger + 1) * 32.
							^ self ] ] ].
	y := y + (1 * velocity).
	y := y round: 2.