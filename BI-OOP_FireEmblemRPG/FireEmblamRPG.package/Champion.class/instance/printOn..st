printing
printOn: aStream
	aStream nextPutAll: name.
	aStream nextPutAll: ' ( ' .
	aStream nextPutAll:  class . 
	aStream nextPutAll:  ' )'.
	aStream cr.
	aStream nextPutAll: 'Health '.
	aStream nextPutAll: (actualHP asString).
	aStream nextPutAll: ' / '.
	aStream nextPutAll: (level abilities health) asString.
	aStream cr.
	level printOn: aStream.