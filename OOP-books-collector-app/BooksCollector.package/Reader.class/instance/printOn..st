writing
printOn: aWriteStream
	aWriteStream nextPutAll:
		'[id:', id, '] ', firstName, ' ', lastName, ', from: ', nationality, ', born: ', birthYear asString.