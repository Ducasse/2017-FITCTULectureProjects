drawing
coveredDraw: aCanvas
	aCanvas fill
		paint: coveredColor;
		path: self boundsInLocal;
		draw.
	
	"Border"
	aCanvas stroke
		paint: Color white;
		path: (aCanvas path
			absolute;
			moveTo: 0@self height;
			lineTo: 0@0;
			lineTo: self width@0;
			finish);
		draw.
	aCanvas stroke
		paint: Color black;
		path: (aCanvas path
			absolute;
			moveTo: self width@0;
			lineTo: self width@self height;
			lineTo: 0@self height;
			finish);
		draw.
