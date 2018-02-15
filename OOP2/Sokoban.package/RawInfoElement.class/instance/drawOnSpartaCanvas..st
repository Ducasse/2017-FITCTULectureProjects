drawing
drawOnSpartaCanvas: aCanvas
	| bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'GroundGravel_Sand.png'.
	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw.