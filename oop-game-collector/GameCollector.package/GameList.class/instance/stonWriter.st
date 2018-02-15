converting
stonWriter
|gameListSton streams|
gameListSton := self asSTON .
streams := FileStream forceNewFileNamed: self fileName.

streams nextPutAll: gameListSton .
streams close.