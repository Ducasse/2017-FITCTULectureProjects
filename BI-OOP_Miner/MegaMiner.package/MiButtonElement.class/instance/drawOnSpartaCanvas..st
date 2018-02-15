drawing
drawOnSpartaCanvas: aCanvas
	| font origin textPainter metrics |
	super drawOnSpartaCanvas: aCanvas.
	aCanvas fill
		paint: Color lightGray;
		path: self boundsInLocal;
		draw.
	font := aCanvas font
		named: self fontName;
		size: self fontSize;
		build.
	textPainter := aCanvas text
		font: font;
		paint: Color white;
		string: self text.
	metrics := textPainter measure.
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	origin := origin - metrics textMetrics bounds origin.
	textPainter
		baseline: origin;
		draw