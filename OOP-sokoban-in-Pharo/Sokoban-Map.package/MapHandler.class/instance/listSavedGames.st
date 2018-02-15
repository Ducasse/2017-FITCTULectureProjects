listing
listSavedGames
	^ ( self listMapsFromDir: ( dir / 'maps' / 'saved_games' )) .
