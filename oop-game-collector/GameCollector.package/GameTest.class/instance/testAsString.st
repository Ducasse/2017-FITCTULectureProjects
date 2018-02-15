tests - converting
testAsString
	|game|
	game := Game new.
	game title: 'Need For Speed'.
	^ self assert: game asString equals: 'Need For Speed'.