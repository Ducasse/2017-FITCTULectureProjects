as yet unclassified
showAllMinesX: aX y: aY
	|tile|
	ui uiBoard children do: [ :elem|
		tile := board apiGetTileReferenceAtX: (elem coord x) Y: (elem coord y).
		((elem coord x = aX) & (elem coord y = aY))
			ifTrue: [ (tile isTileMine) ifTrue: [ elem color: (Color red); clicked: true; mine: true ] ]
			ifFalse: [ (tile isTileMine) ifTrue: [ elem mine: true  ; clicked: true ]]
	].