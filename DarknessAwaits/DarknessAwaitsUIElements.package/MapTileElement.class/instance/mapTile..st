initialization
mapTile: newMapTile
	mapTile := newMapTile.
	mapTile announcer when: DrawCharacterAnnouncement send: #onGameCharacterChanged to: self 