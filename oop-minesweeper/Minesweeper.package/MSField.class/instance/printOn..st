printing
printOn: aStream
	aStream << ' at: ('.
	aStream << coordinates x asString.
	aStream << '@'.
	aStream << coordinates y asString.
	aStream << ')'.