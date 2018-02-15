initialization
calculateY: aY
	| y |
	y := cornerPosition y.
	aY <= MiViewBorderY
		ifTrue: [ relativeCenter := relativeCenter x @ aY.
			y := 1 ]
		ifFalse: [ relativeCenter y <= MiViewBorderY
				ifTrue: [ y := aY - MiViewBorderY.
					relativeCenter := relativeCenter x @ (MiViewBorderY + 1) ] ].
	aY >= (MiMapSize y - MiViewBorderY + 1)
		ifTrue: [ relativeCenter := relativeCenter x @ (aY - (MiMapSize y - MiBlockColumnCount)).
			y := MiMapSize y - MiBlockColumnCount + 1 ]
		ifFalse: [ relativeCenter y >= (MiBlockColumnCount - MiViewBorderY + 1 )
				ifTrue: [ y := aY - (MiBlockColumnCount - MiViewBorderY - 1).
					relativeCenter := relativeCenter x @ (MiBlockColumnCount - MiViewBorderY) ] ].
	cornerPosition := cornerPosition x @ y