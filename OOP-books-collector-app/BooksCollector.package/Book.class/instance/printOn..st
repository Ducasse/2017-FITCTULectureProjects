writing
printOn: aWriteStream
	aWriteStream nextPutAll:
	'[id:', id asString, '] [cnt:', number asString,'] : ', title, ' written by ', writer, '. ', year asString, ', ', publisher, '.' .