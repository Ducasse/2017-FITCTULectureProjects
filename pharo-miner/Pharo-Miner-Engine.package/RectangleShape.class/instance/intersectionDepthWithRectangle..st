intersection
intersectionDepthWithRectangle: aRectangle
	| mhtdist size dir |
	mhtdist := (self offset - aRectangle offset) abs.
	size := ((self width + aRectangle width) / 2) @ ((self height + aRectangle height) / 2).
	dir := (self offset directionTo: aRectangle offset).
	(mhtdist x - size x) < (mhtdist y - size y)
		ifTrue: [ ^ (mhtdist y - size y) * (0 @ dir y) normalized ]
		ifFalse: [ ^ (mhtdist x - size x) * (dir x @ 0) normalized ]