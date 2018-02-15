initialization
drawOnSpartaCanvas: aCanvas
	
	| bitmap |
	
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'target.png'.
	
	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw