tests - printing
testPrintOn
	|game|
	game := Game new.
	game title: 'GTA V'.
	^ self assert: game printString equals: 'GTA V'.