drawing
makeBorder: aCanvas
	|path|
	path := aCanvas path
		moveTo: 0 @ 0;
		lineTo: 0 @ self height;
		lineTo: self extent;
		lineTo: self width @ 0;
		lineTo: 0 @ 0;
		build.
		
	aCanvas  stroke
		paint: Color black;"(Color r:8 g:5 b:23);" "paleBlue;"
		path: path;
		width: 5;
		draw.