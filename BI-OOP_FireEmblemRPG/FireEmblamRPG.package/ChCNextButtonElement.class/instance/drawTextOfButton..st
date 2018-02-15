drawing
drawTextOfButton: aCanvas 
	| font origin textPainter metrics | 
	font := aCanvas font 
		"named: 'Source Sans Pro';"
		named: 'Source Code Pro';
		size: 16; 
		build.
	
	textPainter := aCanvas text 
	font: font; 
	paint: Color white; 
	string: 'NEXT' asString.
	
	metrics := textPainter measure.
	
	origin := (self extent - metrics textMetrics bounds extent) / 2.0. 
	origin := origin - metrics textMetrics bounds origin. 
	textPainter 
		baseline: origin; 
		draw

