tests - accessing
testRating
	|game|
	game := Game new.
	game rating: 7.
	^ self assert: game rating equals: 7.