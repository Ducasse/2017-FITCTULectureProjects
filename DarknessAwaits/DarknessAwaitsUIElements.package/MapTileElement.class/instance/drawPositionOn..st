initialization
drawPositionOn: canvas
	| font origin textPainter metrics |
	
	font := canvas font
						 named: 'Source Sans Pro';
						 size: 35;
					    build.
	textPainter := canvas text 
								font: font;
								paint: Color black;
								string: self mapTile position asString.
								
	metrics := textPainter measure.
	
	origin := (self extent - metrics textMetrics bounds extent) / 2.
	origin := origin - metrics textMetrics bounds origin.
	textPainter 
		baseline: origin;
		draw