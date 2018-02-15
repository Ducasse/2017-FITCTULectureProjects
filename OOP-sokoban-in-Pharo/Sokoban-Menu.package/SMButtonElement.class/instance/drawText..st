visual properties
drawText: aCanvas


| font origin textPainter metrics alingment |
  font := aCanvas font
    named: 'Source Sans Pro';
    size: 20;
    build.
  textPainter := aCanvas text
    font: font;
    paint: Color white;
    string: self button text asString.

  metrics := textPainter measure.
	
	alingment := self button alignment asString.
	( alingment = 'center' ) 
	ifTrue: [ origin := (self extent - metrics textMetrics bounds extent) / 2.0. ]
	ifFalse: [
		( alingment = 'right' ) 
		ifTrue: [  origin := 
			( self width - metrics textMetrics width ) @ 
			(( self height - metrics textMetrics height ) / 2.0 ) ]
		"alignment = left"
		ifFalse: [ origin := 0 @ (( self height - metrics textMetrics height ) / 2.0 ) ].
	].

  origin := origin - metrics textMetrics bounds origin.


  textPainter
    baseline: origin;
    draw