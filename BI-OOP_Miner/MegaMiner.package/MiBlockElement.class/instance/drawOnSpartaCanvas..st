drawing
drawOnSpartaCanvas: aCanvas
	super drawOnSpartaCanvas: aCanvas.
	aCanvas fill
		paint: (self getBackground);
		path: self boundsInLocal;
		draw