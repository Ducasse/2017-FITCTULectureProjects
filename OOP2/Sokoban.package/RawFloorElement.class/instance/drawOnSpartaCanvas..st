drawing
drawOnSpartaCanvas: aCanvas
	
	| bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'floor.png'.

	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw