graphics
drawOnSpartaCanvas: aCanvas

   "save canvas"
	graphicsCanvas := aCanvas.
	
	"Load textures, if not done already"
	textureDatabase loadAll: aCanvas.
	
	aCanvas fill
	paint: self backgroundPaint;
	path: self boundsInLocal;
	draw.
	
	"draw background"
	aCanvas fill
    path: (0@0 extent: (self fieldsX * variables squareSize)@(self fieldsY * variables squareSize));
    paint: (textureDatabase background);
    draw.

	"Draw all fields"
	mapFields do: [ :x | 
		x do: [ :y | 
			y drawOnSpartaCanvas: aCanvas
		 ]	 
		 ].
	
 	"Draw player, meaning draw user GUI selections, as highlights where can player move"
(currentlyPlayingPlayer notNil)
	ifTrue: [currentlyPlayingPlayer drawOnSpartaCanvas: aCanvas].
