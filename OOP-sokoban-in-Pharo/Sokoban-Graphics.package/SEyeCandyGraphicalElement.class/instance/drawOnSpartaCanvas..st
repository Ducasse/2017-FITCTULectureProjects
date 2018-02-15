drawing
drawOnSpartaCanvas: aCanvas
	
	aCanvas fill
		paint: self backgroundColor;
		path: self boundsInLocal;
		draw