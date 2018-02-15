run
init
	queue := LinkedList new.
	queue addLast: (tilemap x: (self startColumn) y: (self startRow)).
	lastProcessed := nil.