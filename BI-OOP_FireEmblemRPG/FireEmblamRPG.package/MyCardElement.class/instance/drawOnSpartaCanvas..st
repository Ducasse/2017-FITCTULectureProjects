drawing
drawOnSpartaCanvas: aCanvas
	|roundedRectangle|
	super drawOnSpartaCanvas: aCanvas.
	
	card field accessable
		ifTrue: [ self makeBorder: aCanvas ].
	
	roundedRectangle := aCanvas shape
		roundedRectangle: self boundsInLocal
		radii: (BlCornerRadii radius: self cornerRadius).
		
	aCanvas clip
		by: roundedRectangle 
		during: [ 
			aCanvas fill
			paint: (self backgroundPaint alpha: 0);
			path: self boundsInLocal;
			draw.].