visiting
visitBooks: aBookRest
	| saveLocation aStream read |
	saveLocation := self rootPath / aBookRest destFilename.
	aStream := saveLocation readStream.
	read := aStream contents.
	aStream close.
	[ aBookRest books: (STON fromString: read) ] on: STONReaderError do: [
		Transcript print: 'LoaderVisitor>>visitBooks: An error reading from a file.'.
		Transcript open.
		aBookRest books: '{}'.
	]