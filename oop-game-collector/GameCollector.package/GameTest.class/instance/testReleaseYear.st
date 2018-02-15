tests - accessing
testReleaseYear
	|game|
	game := Game new.
	game releaseYear: 2016.
	^ self assert: game releaseYear equals: 2016.