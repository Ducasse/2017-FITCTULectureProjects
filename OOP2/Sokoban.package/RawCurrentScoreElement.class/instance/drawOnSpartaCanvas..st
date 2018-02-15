drawing
drawOnSpartaCanvas: aCanvas
	| font bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'current.png'.
	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw.
		
		font := aCanvas font
		named: 'Source Sans Pro';
		size: 25;
		build.
	aCanvas text
		baseline: 20@40;
		font: font;
		string: info asString;
		draw