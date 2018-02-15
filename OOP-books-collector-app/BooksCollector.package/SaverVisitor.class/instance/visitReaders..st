visiting
visitReaders: aReaderRest
	| saveLocation aStream |
	saveLocation := self rootPath / aReaderRest destFilename.
	aStream := saveLocation writeStream.
	aStream nextPutAll: (STON toString: (aReaderRest readers)).
	aStream close.