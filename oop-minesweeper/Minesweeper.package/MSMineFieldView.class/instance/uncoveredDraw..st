drawing
uncoveredDraw: aCanvas
	| circle |
	
	circle := (BlEllipse diameter: (self fieldSize * 0.8)) asElement
		background: (Color red);
		border: (BlBorder paint: Color black width: 1).
	
	circle relocate: ((fieldSize - (circle geometry extent))/2).
	self addChild: circle.
	
	aCanvas fill
		paint: uncoveredColor;	
		path: self boundsInLocal;
		draw.