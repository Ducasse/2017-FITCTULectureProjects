drawing
uncoveredDraw: aCanvas
	| font origin textPainter metrics textColor n |
	
	drawnColor := uncoveredColor.
	
	(field tooManyFlaggedNeighbours)
		ifTrue: [ drawnColor := warningColor ].
	
	aCanvas fill
		paint: drawnColor;
		path: self boundsInLocal;
		draw.
		
	field number = 0
		ifTrue: [ ^ self ].
		
	font := aCanvas font
		named: 'Arial Black';
		size: 15;
		build.
	
	origin := self extent / 2.0.
	
	textColor := Color black.
	n := self field number.
	n = 1 ifTrue: [ textColor := Color blue darker ].
	n = 2 ifTrue: [ textColor := Color green muchDarker ].
	n = 3 ifTrue: [ textColor := Color red darker ].
	n = 4 ifTrue: [ textColor := Color red muchDarker ].
	n = 5 ifTrue: [ textColor := Color purple muchDarker  ].
	n = 6 ifTrue: [ textColor := Color cyan muchDarker ].
	n = 7 ifTrue: [ textColor := Color veryDarkGray  ].
	n = 8 ifTrue: [ textColor := Color black ].
	
	textPainter := aCanvas text
		font: font;
		paint: textColor ;
		string: self field number asString.
	
	metrics := textPainter measure.
	
	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
	
	origin := origin - metrics textMetrics bounds origin.
	
	textPainter
		baseline: origin;
		draw