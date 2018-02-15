initialization
calculateX: aX
	| x |
	x := cornerPosition x.
	aX <= MiViewBorderX
		ifTrue: [ relativeCenter := aX @ relativeCenter y.
			x := 1 ]
		ifFalse: [ relativeCenter x <= MiViewBorderX
				ifTrue: [ x := aX - MiViewBorderX.
					relativeCenter := (MiViewBorderX + 1) @ relativeCenter y ] ].
	aX >= (MiMapSize x - MiViewBorderX + 1)
		ifTrue: [ relativeCenter := (aX - (MiMapSize x - MiBlockRowCount)) @ relativeCenter y.
			x := MiMapSize x - MiBlockRowCount + 1 ]
		ifFalse: [ relativeCenter x >= (MiBlockRowCount - MiViewBorderX + 1 )
				ifTrue: [ x := aX - (MiBlockRowCount - MiViewBorderX - 1).
					relativeCenter := (MiBlockRowCount - MiViewBorderX) @ relativeCenter y ] ].
	cornerPosition := x @ cornerPosition y