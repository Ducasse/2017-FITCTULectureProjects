acessing text
appendText: aText
	textStream nextPutAll: aText; nextPutAll: Character cr asString.
	self text: textStream contents.
	^ aText