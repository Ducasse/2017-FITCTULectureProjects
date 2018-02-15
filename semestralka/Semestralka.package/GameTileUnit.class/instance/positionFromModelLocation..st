positioning
positionFromModelLocation: aPoint
	^ (aPoint x * (GameTile defaultSize x + 5))
		@ (aPoint y * (GameTile defaultSize y + 5))