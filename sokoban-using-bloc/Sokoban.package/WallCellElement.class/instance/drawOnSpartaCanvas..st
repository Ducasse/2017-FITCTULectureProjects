drawing
drawOnSpartaCanvas: aCanvas
	| img |
	img := PathCellElement imageRepresentation scaledToSize: displaySize.
	"draw ground first (it will be in background)"
	aCanvas fill
		path: (0 @ 0 extent: img extent);
		paint: img;
		draw.

	"now draw representation of wall"
	super drawOnSpartaCanvas: aCanvas