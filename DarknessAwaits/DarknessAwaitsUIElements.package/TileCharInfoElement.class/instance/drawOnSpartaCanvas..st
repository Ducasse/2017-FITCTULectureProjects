initialization
drawOnSpartaCanvas: aCanvas
		super drawOnSpartaCanvas: aCanvas.
		self drawCommonOn: aCanvas.
		tileCharInfo hasChanged ifTrue: [ self drawCharacterInfo ]