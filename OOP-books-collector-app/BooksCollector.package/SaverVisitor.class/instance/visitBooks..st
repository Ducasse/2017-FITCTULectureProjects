visiting
visitBooks: aBookRest
	| saveLocation aStream |
	saveLocation := self rootPath / aBookRest destFilename.
	aStream := saveLocation writeStream.
	aStream nextPutAll: (STON toString: (aBookRest books)).
	aStream close.