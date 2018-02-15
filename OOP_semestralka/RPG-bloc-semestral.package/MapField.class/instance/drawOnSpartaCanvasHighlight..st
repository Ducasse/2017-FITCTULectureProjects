drawing
drawOnSpartaCanvasHighlight: aCanvas
"Highlights the square"
 aCanvas fill
	 alpha: 0.3;
    path: (self drawPosition extent: (self size));
    paint: Color blue;
	 draw.