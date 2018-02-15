drawing
drawOnSpartaCanvas: aCanvas
	| font textPainter  metrics anExtent origin |

	aCanvas fill
		paint: Color gray;
		path: self boundsInLocal;
		draw.
	
	font := aCanvas font
		named: 'Source Sans Pro';
		size: 24;
		build.
	
	textPainter := aCanvas text
		font: font;
		paint: Color black;
		string: message.
		
	metrics := textPainter measure.
	anExtent := metrics textMetrics bounds extent.
	
	origin := (self extent - anExtent) / 2.0.
	origin := origin - metrics textMetrics bounds origin.
	
	textPainter
		baseline: origin;
		draw.