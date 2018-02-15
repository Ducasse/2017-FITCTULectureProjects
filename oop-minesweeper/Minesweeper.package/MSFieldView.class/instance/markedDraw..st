drawing
markedDraw: aCanvas
	self coveredDraw: aCanvas.
	aCanvas fill
		path: (aCanvas path
			absolute;
			moveTo: (self width * 2.0 / 3.0) @ (self height / 4.0);
			lineTo: (self width * 2.0 / 3.0) @ (self height / 2.0);
			lineTo: (self width / 3.0 ) @ (self height / 3.0);
			lineTo: (self width * 2.0 / 3.0) @ (self height / 4.0);
			close;
			finish);
		paint: Color red;
		draw.
	aCanvas stroke
		paint: Color black;
		path: (aCanvas shape line: (self width * 2.0 / 3.0) @ (self height / 4.0) to: (self width * 2.0 / 3.0) @ (self height * 3.0 / 4.0));
		draw.
	