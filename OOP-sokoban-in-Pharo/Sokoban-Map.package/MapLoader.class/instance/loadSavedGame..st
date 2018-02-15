loading
loadSavedGame: aGameName
	^ ( self loadMap: ( dir / 'maps' / 'saved_games' / aGameName )) .
