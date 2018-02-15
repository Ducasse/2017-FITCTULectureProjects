tests - accessing
testPosterUrl
	|game|
	game := Game new.
	game posterUrl: 'www.image.com/poster'.
	^ self assert: game posterUrl equals: 'www.image.com/poster'.