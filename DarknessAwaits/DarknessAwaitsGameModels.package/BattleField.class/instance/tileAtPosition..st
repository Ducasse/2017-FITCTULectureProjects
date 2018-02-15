accessing
tileAtPosition: pos
	^ self tileAtIndex: (self calculateIndex: pos)