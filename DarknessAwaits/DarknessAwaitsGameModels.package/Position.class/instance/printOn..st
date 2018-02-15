accessing
printOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: (self posX) asString ;
		nextPut: $,;
		nextPut: Character space;
		nextPutAll: (self posY) asString;
		nextPut: $).