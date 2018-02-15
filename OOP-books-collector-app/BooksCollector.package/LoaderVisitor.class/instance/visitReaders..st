visiting
visitReaders: aReaderRest
	| saveLocation aStream read |
	saveLocation := self rootPath / aReaderRest destFilename.
	aStream := saveLocation readStream.
	read := aStream contents.
	aStream close.
	[ aReaderRest readers: (STON fromString: read) ] on: STONReaderError do: [
		Transcript print: 'LoaderVisitor>>visitReaders: An error reading from a file.'.
		Transcript open.
		aReaderRest readers: '{}'.
	]