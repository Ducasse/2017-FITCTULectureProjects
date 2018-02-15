drawing
drawOnSpartaCanvas: aCanvas
	| img |
	super drawOnSpartaCanvas: aCanvas.
	img := self class imageRepresentationForContent: cell contents.
	img
		ifNotNil: [ img := img scaledToSize: displaySize.
			aCanvas fill
				path: (0 @ 0 extent: img extent);
				paint: img;
				draw ]