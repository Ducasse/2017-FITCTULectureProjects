drawing
drawOnSpartaCanvas: aCanvas
	
	| bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'box.png'.

	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw