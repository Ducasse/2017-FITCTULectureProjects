drawing
bottomRight: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x + 2 + size) @ (position y + 3 + size).
	(position x + 2 + size) @ (position y + 3 + (2 * size)).
	(position x + 1 + size) @ (position y + 4 + size).
	(position x + 1 + size) @ (position y + 2 + (2 * size))
	});
	width: 1;
	draw.