compiling
compileProperty: aProperty on: anObject
	anObject compile: (aProperty asString), '
	^ self property: ', '''', (aProperty asString), '''', '.'.
	anObject compile: (aProperty asString), ': anObject
	^ self property: ', '''', (aProperty asString), '''', ' put: anObject.'