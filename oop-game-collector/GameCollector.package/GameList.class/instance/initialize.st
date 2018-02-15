initialization
initialize
	| text file |
	super initialize.
	file := FileLocator imageDirectory resolve / self fileName.
	file exists
		ifFalse: [ games := OrderedCollection new.
			self stonWriter ].
	stream := FileStream readOnlyFileNamed: self fileName.
	text := stream contents.
	games := (STONReader on: text readStream) next.
	listName := 'ListOfGames'