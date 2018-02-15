printing
printOn: aStream
	aStream << 'MSGameProperties: '.
	aStream << 'size: '.
	aStream << size asString.
	aStream << ', mineCount: '.
	aStream << mineCount asString.
