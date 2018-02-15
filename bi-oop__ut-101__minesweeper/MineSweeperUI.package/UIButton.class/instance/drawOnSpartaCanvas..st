drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
	paint: UIColors bgColor;
	path: self boundsInLocal;
	draw.
	
	UIShade from: 0@0 to: self extent on: aCanvas. 
	
	self drawHead: aCanvas.
	
	state = 1 ifTrue: [ self drawHappy: aCanvas ].
	state = 2 ifTrue: [ self drawSad: aCanvas ].
	state = 3 ifTrue: [ self drawBoss: aCanvas ].