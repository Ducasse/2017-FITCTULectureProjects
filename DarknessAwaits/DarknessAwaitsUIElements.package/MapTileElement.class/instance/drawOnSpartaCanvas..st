initialization
drawOnSpartaCanvas: aCanvas
		super drawOnSpartaCanvas: aCanvas.
		self drawCommonOn: aCanvas.
		self mapTile gameCharacter isNil 
"			ifTrue:  [ self drawTestCoordinates: aCanvas ]"
			ifFalse: [ 
				self drawOccupiedTile: aCanvas.
				self mapTile gameCharacter isActive
					ifTrue: [ self drawOccupiedActiveTile: aCanvas ].
						].
