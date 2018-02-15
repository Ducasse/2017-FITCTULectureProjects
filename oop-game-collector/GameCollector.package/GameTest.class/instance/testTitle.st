tests - accessing
testTitle
	|game|
	game := Game new.
	game title: 'Game title'.
	^ self assert: game title equals: 'Game title'.