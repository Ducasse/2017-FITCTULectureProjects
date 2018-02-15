run
init
	stack := LinkedList new.
	stack addFirst: (tilemap x: (self startColumn) y: (self startRow)).
	lastProcessed := nil.