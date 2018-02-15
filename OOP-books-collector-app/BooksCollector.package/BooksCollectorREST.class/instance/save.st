load and saving
save
	rests do: [ :rest | rest acceptSaver: (SaverVisitor new). ].
	"self bookRest acceptSaver: (SaverVisitor new).
	self readerRest acceptSaver: (SaverVisitor new)."