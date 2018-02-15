drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
	paint: self color;
	path: self boundsInLocal;
	draw.
	self isClicked 
		ifTrue: [ self drawClickedSideOn: aCanvas ]
		ifFalse: [ self drawBacksideOn: aCanvas ].