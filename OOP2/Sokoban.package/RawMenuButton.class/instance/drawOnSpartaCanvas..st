drawing
drawOnSpartaCanvas: aCanvas
	| font origin textPainter metrics bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'level.png'.
	aCanvas fill
          paint: bitmap;
          path: self boundsInLocal;
          draw.
  	font := aCanvas font
    named: 'Source Sans Pro';
    size: 20;
    build.
  	textPainter := aCanvas text
    font: font;
    paint: Color white;
    string: (levelNum asString).
  	metrics := textPainter measure.
  	origin := (self extent - metrics textMetrics bounds extent) / 2.0.
  	origin := origin - metrics textMetrics bounds origin.
  	textPainter
    baseline: origin;
    draw