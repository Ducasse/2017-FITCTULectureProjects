drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: Color yellow;
		path: (aCanvas shape ellipse: self boundsInLocal);
		draw