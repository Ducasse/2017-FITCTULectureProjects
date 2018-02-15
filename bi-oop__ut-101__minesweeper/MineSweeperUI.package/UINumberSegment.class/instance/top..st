drawing
top: aCanvas
	aCanvas stroke
	paint: color;
	path: (aCanvas shape polygon: {
	(position x + 1) @ (position y).
	(position x + 1 + size) @ (position y).
	(position x + 2) @ (position y + 1).
	(position x + size) @ (position y + 1)
	});
	width: 1;
	draw.