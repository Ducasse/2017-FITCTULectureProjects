action
updateTile: aTile mw: anInstance
	anInstance grid at: aTile xy replace: (pocket new xy: aTile xy)