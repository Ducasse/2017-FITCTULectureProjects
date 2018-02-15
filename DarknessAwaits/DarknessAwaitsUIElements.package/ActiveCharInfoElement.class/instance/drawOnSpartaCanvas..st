accessing
drawOnSpartaCanvas: aCanvas
	super drawOnSpartaCanvas: aCanvas.
	self drawCommonOn: aCanvas.
	hasChanged
		ifTrue: [ self drawActiveCharacterInfo ]