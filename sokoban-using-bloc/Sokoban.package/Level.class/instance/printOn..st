printing
printOn: aStream
	"print the level in XSB format"

	0 to: height - 1 do: [ :r | 
		0 to: width - 1 do: [ :c | (self at: r @ c) printOn: aStream ].
		aStream nextPut: Character cr ]