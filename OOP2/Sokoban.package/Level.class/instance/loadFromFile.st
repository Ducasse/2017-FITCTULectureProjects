loading
loadFromFile
	| b newBoxes fileStream line tokens width height cell |
	newBoxes := Bag new.
	fileStream := FileStream fileNamed: filename.
	line := fileStream nextLine.
	tokens := line splitOn: ' '.
	tokens size == 3
		ifFalse: [ self error: 'Error loading level file! 0x0001' ].
	(tokens at: 1) isAllDigits
		ifFalse: [ self error: 'Error loading level file! 0x0002' ].
	(tokens at: 2) isAllDigits
		ifFalse: [ self error: 'Error loading level file! 0x0003' ].
	(tokens at: 3) isAllDigits
		ifFalse: [ self error: 'Error loading level file! 0x0004' ].
	width := (tokens at: 1) asNumber.
	height := (tokens at: 2) asNumber.
	optimalScore := (tokens at: 3) asNumber.
	b := Board width: width height: height.
	1 to: height do: [ :y | 
		line := fileStream nextLine.
		tokens := line splitOn: ' '.
		tokens size == width
			ifFalse: [ self error: 'Error loading level file! 0x0005' ].
		1 to: width do: [ :x | 
			cell := b byLiteral: (tokens at: x).
			cell isNil
				ifTrue: [ self error: 'Error loading level file! 0x0006' ].
			(cell isKindOf: Box)
				ifTrue: [ cell x: x.
					cell y: y.
					b put: Floor new X: x Y: y.
					newBoxes add: cell ].
			(cell isKindOf: Player)
				ifTrue: [ b put: Floor new X: x Y: y.
					player x: x.
					player y: y ].
			(cell isKindOf: MapElement)
				ifTrue: [ b put: cell X: x Y: y ] ] ].
	fileStream close.
	board := b.
	boxes := newBoxes.
	^ true