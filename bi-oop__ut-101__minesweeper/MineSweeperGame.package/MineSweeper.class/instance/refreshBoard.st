as yet unclassified
refreshBoard
	|x y tile|
	ui uiBoard children do: [ :elem|
		x := elem coord x.
 		y := elem coord y.
		tile := board apiGetTileReferenceAtX: x Y: y.

		(tile isMarked) ifTrue: [ 
				elem flagged: true.
		].
			
		(tile isOpened)	
			ifTrue: [
				(tile isTileNumber)
					ifTrue: [ elem number: tile number. elem clicked: true ].
					
				(tile isTileEmpty)	
					ifTrue: [ elem number: 0. elem clicked: true ].
		].
	
		(tile isOpened not and: tile isMarked not)
			ifTrue: [ elem drawStartState ].
	].