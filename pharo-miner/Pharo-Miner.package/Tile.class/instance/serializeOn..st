serialization
serializeOn: aStream
	super serializeOn: aStream.
	self stonStringOn: aStream.
	aStream cr.