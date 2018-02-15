accessing
unvisited
	^ (self state = TileState undiscovered) | (self state = TileState end).