tests - converting
testAsLowercase
	|game|
	game := Game new.
	game title: 'Need For Speed'.
	^ self assert: game asLowercase equals: 'need for speed'.