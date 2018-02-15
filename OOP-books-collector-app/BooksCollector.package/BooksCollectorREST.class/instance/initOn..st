initialization
initOn: aPort
	isRunning isNotNil
		ifTrue: [ isRunning ifTrue: self stop ]
		ifFalse: [ self isRunning: false ].
	
	teapot := Teapot configure: { #defaultOutput -> #ston. #port -> aPort }.
	rests:= Bag new.
	
	self bookRest: (BookREST withTeapot: self teapot).
	self readerRest: (ReaderREST withTeapot: self teapot).
	
	rests add: self bookRest.
	rests add: self readerRest.