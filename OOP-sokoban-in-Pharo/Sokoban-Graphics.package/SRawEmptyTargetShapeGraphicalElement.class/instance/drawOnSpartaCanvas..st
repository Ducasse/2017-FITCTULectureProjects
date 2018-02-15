drawing
drawOnSpartaCanvas: aCanvas
	
	| objfont objorigin objtextpainter objmetrics |
	aCanvas fill
		paint: self backgroundColor;
		path: self boundsInLocal;
		draw.
	
	objfont := aCanvas font
	   named: 'Source Sans Pro';
	   size: 12;
	   build.
	
	objtextpainter := aCanvas text
	   font: objfont;
	   paint: Color cyan;
	   string: 'TARGET'.
		
	objmetrics := objtextpainter measure.
	objorigin := (self extent - objmetrics textMetrics bounds extent) / 2.0.
	objorigin := objorigin - objmetrics textMetrics bounds origin.
	
	objtextpainter
	   baseline: objorigin;
	   draw
	
	