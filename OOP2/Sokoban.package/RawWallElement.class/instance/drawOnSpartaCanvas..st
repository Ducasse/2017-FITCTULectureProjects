drawing
drawOnSpartaCanvas: aCanvas
	
	| bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'wall.png'.

	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw