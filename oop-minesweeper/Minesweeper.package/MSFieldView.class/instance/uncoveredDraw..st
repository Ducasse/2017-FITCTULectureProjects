drawing
uncoveredDraw: aCanvas
	aCanvas fill
		paint: uncoveredColor;
		path: self boundsInLocal;
		draw.
