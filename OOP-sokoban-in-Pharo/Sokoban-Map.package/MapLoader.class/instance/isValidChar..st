validation
isValidChar: aChar
	^ ( blocks keys anySatisfy: [ :each | each = aChar ] ) .
