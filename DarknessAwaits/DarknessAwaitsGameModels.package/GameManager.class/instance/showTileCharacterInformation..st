initialization
showTileCharacterInformation: mapTile
	(mapTile gameCharacter) ifNotNil: [  
		tileCharInfo gameCharacter: mapTile gameCharacter
	]