drawing
drawOnSpartaCanvasHighlightMonster: aCanvas
"Highlights the square"
 aCanvas fill
    path: (self drawPosition extent: (self size));
    paint: Color yellow;
	 draw.