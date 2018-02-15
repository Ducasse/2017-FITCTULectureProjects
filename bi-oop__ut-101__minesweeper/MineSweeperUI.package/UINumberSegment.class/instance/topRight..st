drawing
topRight: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x + 2 + size) @ (position y + 1).
	(position x + 2 + size) @ (position y + 1 + size).
	(position x + 1 + size) @ (position y + 2).
	(position x + 1 + size) @ (position y + size)
	});
	width: 1;
	draw.