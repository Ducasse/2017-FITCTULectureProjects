intersection
intersectRectangle: aRectangle
	| mhtdist size |
	mhtdist := (self offset - aRectangle offset) abs.
	size := ((self width + aRectangle width) / 2) @ ((self height + aRectangle height) / 2).
	^ (mhtdist x - size x) < 0 and: [(mhtdist y - size y) < 0]