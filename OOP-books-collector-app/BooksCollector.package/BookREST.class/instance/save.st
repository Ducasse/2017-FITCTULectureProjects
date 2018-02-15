load and saving
save
	|workDir saveDir fileName aStream |
		
	workDir:= (FileSystem disk workingDirectory ).
	saveDir:= (workDir  / 'BooksCollector').
	
	[ saveDir createDirectory ] on:DirectoryExists do: [  ].

	fileName:= (saveDir / 'books.txt').
	[ fileName delete ] on:FileDoesNotExist do: [  ].

	aStream:= fileName writeStream.
	aStream nextPutAll: (STON toString: books).
	aStream close.