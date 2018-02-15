drawing
topLeft: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x) @ (position y + 1).
	(position x) @ (position y + 1 + size).
	(position x + 1) @ (position y + 2).
	(position x + 1) @ (position y + size)
	});
	width: 1;
	draw.