acessing text
appendTextNoCr: aText
	textStream nextPutAll: aText.
	self text: textStream contents.
	^ aText