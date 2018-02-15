drawing
middle: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x + 2) @ (position y + 2 + size).
	(position x + 3) @ (position y + 3 + size).
	(position x - 1 + size) @ (position y + 3 + size).
	(position x + size) @ (position y + 2 + size).
	(position x - 1 + size) @ (position y + 1 + size).
	(position x + 3) @ (position y + 1 + size)
	});
	width: 1;
	draw.
	
aCanvas stroke
	paint: color;
	path: (aCanvas shape
		line: (position x + 3) @ (position y + 1 + size)
		to: (position x - 1 + size) @ (position y + 1 + size));
	width: 1;
	draw.
	
	
	aCanvas stroke
	paint: color;
	path: (aCanvas shape
		line: (position x + 2) @ (position y + 2 + size)
		to: (position x + size) @ (position y + 2 + size));
	width: 1;
	draw.
	
	aCanvas stroke
	paint: color;
	path: (aCanvas shape
		line: (position x + 3) @ (position y + 3 + size)
		to: (position x - 1 + size) @ (position y + 3 + size));
	width: 1;
	draw.