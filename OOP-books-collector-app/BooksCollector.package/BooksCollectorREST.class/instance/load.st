load and saving
load
	self isRunning ifTrue: (Transcript print: 'Do not load when the server is running!'; open) ifFalse: (rests do: [ :rest | rest acceptLoader: (LoaderVisitor new) ]).
	"self bookRest acceptLoader: (LoaderVisitor new).
	self readerRest acceptLoader: (LoaderVisitor new)."