drawing
drawOnSpartaCanvas: aCanvas
	| font origin textPainter metrics anExtent |

	aCanvas fill
		paint: Color gray;
		path: self boundsInLocal;
		draw.
	
	font := aCanvas font
		named: 'Source Sans Pro';
		size: 20;
		build.
	
	textPainter := aCanvas text
		font: font;
		paint: Color black;
		string: text.
	
	metrics := textPainter measure.
	anExtent := metrics textMetrics bounds extent.
	origin := (self extent - anExtent) / 2.0.
	origin := origin - metrics textMetrics bounds origin.
	
	textPainter 
		baseline: origin;
		draw.