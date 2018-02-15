adding
decrementBook: aBook
	(aBook number > 0)
		ifTrue: [  aBook number: (aBook number - 1) ].
	