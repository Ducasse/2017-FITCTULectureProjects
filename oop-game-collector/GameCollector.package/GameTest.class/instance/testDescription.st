tests - accessing
testDescription
	|game|
	game := Game new.
	game description: 'Game description'.
	^ self assert: game description equals: 'Game description'.