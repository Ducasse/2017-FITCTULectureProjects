drawing
drawOnSpartaCanvas: aCanvas
	self size: fieldSize.
	field covered
		ifTrue: [ 
			field marked
				ifTrue: [ self markedDraw: aCanvas ]
				ifFalse: [ self coveredDraw: aCanvas]
		]
		ifFalse: [ 
			self uncoveredDraw: aCanvas
		].
		