drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
	paint: self color;
	path: self boundsInLocal;
	draw.
	
	self drawValue: aCanvas