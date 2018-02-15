drawing
drawOnSpartaCanvas: aCanvas
	
	| bitmap |
	bitmap := aCanvas bitmap fromFileNamed: Sokoban resourcesPath, 'boxOnTarget.png'.

	aCanvas fill
		paint: bitmap;
		path: self boundsInLocal;
		draw