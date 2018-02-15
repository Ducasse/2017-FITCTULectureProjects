intersection
containsPoint: aPoint
	^ (self offset distanceTo: aPoint) <= self radius