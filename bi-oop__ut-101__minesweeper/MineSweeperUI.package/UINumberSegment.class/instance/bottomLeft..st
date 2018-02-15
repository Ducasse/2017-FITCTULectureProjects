drawing
bottomLeft: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x) @ (position y + 3 + size).
	(position x) @ (position y + 3 + (2 * size)).
	(position x + 1) @ (position y + 4 + size).
	(position x + 1) @ (position y + 2 + (2 * size))
	});
	width: 1;
	draw.