printing
saveHighscore: aName path: aPath
	"Appends a name and the current step count to a file to save user's scorel"

	aName
		ifNotEmpty: [ | stream |
			stream := aPath asFileReference writeStream.
			stream
				setToEnd;
				nextPutAll: aName asString;
				space;
				nextPutAll: history moveCount asString;
				nextPutAll: ',';
				close ]