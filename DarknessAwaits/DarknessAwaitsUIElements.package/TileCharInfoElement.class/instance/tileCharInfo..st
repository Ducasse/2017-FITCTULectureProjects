initialization
tileCharInfo: newTileCharInfo
	tileCharInfo := newTileCharInfo. 
	tileCharInfo announcer when: ShowCharacterInfoAnnouncement send: #onShowCharacterInfo to: self