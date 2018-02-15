accessing
drawCommonOn: canvas
	| font origin textPainter metrics |
	
	canvas fill
		paint: Color gray;
		path: ( canvas shape roundedRectangle: (self boundsInLocal) radii: (BlCornerRadii radius: 4 ));
		draw.
	
	font := canvas font
						 named: 'Source Sans Pro';
						 size: 22;
					    build.
	textPainter := canvas text 
								font: font;
								paint: Color black;
								string: self option text.
								
	metrics := textPainter measure.
	
	origin := (self extent - metrics textMetrics bounds extent) / 2.
	origin := origin - metrics textMetrics bounds origin.
	textPainter 
		baseline: origin;
		draw