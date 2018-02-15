tests - creating
testInitialize
	|game|
	game := Game new.
	^ self assert: ((game title = '') & (game rating = 0) & (game releaseYear = 0) & (game description = '') & (game completed = false) & (game price = 0) & (game platform platformName = '') & (game genre isOther) & (game state isOwned)).