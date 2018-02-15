drawing
bottom: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x + 1) @ (position y + 4 + (2 * size)).
	(position x + 1 + size) @ (position y + 4 + (2 * size)).
	(position x + 2) @ (position y + 3 + (2 * size)).
	(position x + size) @ (position y + 3 + (2 * size))
	});
	width: 1;
	draw.