drawing
drawClickedSideOn: aCanvas
	| font origin textPainter metrics |
	
	aCanvas stroke
			paint: UIColors shadeColor;
			path: (aCanvas shape 
				line: 0@0 
				to: (self width)@0 );
			width: 1;
			draw.
	
	aCanvas stroke
			paint: UIColors shadeColor;
			path: (aCanvas shape 
				line: 0@0 
				to: 0@(self height) );
			width: 1;
			draw.
	
	mine 
		ifTrue: [ self drawMine: aCanvas ]
		ifFalse: [
	
	font := aCanvas font
	named: 'Source Sans Pro';
	size: 20;
	build.

	textPainter := aCanvas text
	font: font;
	paint: (self numColor: number);
	string: number asString.
	metrics := textPainter measure.
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	origin := origin - metrics textMetrics bounds origin.
	textPainter
	baseline: origin;
	draw.
	].