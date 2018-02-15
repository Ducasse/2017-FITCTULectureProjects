drawing
drawOnSpartaCanvas: aCanvas
	| bitmap |
	
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'player.png'.
	
	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw