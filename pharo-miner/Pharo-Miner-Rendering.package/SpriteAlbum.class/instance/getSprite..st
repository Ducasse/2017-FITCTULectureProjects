accessing
getSprite: aSymbol
	^ self getSprites at: aSymbol ifAbsent: [ self class missingSprite ]