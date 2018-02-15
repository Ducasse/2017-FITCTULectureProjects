load and saving
load
	|workDir saveDir fileName aStream aString |
		
	workDir:= (FileSystem disk workingDirectory ).
	saveDir:= (workDir  / 'BooksCollector').
	[ saveDir createDirectory ] on:DirectoryExists do: [  ].

	fileName:= (saveDir / 'books.txt').
	aStream:= fileName writeStream.
	aStream close.
	aStream:= fileName readStream.
	aString:= aStream contents.
	aStream close.
	[ books:= (STON fromString: aString). ] 
		
		on:STONReaderError do:[
		books:= (STON fromString: '{}').
		self save.
	].