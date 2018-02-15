tests - accessing
testPrice
	|game|
	game := Game new.
	game price: 500.
	^ self assert: game price equals: 500.