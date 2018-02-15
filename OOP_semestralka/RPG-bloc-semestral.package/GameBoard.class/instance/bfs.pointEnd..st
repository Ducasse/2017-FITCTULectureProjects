mapAlgorithms
bfs: aPointStart pointEnd: aPointEnd
	|BLACK GREY WHITE returnList currentPoint t|
	"finds path from A to B if it does not exist, return empty list"
	returnList := LinkedList new.

	((self isOutOfRange: aPointStart) or: (self isOutOfRange: aPointEnd))
	ifTrue: [ ^returnList ].
	
	BLACK := Set new. 
	GREY := Dictionary new. 
	WHITE := LinkedList new. 
	
	WHITE add: aPointStart.
	
	[ WHITE isNotEmpty ] whileTrue: 
    [ 
		currentPoint := (WHITE first).
		WHITE removeFirst.
		
		"Transcript show: ('exploring ', (currentPoint asString)); cr."
		
		t := self squaresAround: (currentPoint x) Y: (currentPoint y).
		t do: [ :p |
			
			((self isOutOfRange: p) not)
			ifTrue: [ 
				((BLACK includes: p) not)
				ifTrue: [ 
					((self hasMapFieldMonster: p) not)
					ifTrue: [ 
						"If the point is NOT out of range and is valid, and is NOT in the BLACK"
						BLACK add: p. 
						GREY at: p put: currentPoint. 
						
						"Transcript show: ('comparing ', (p asString), '   ',(aPointEnd asString)); cr."
				"If the point is the last point"
				((p x) = (aPointEnd x) & (p y) = (aPointEnd y))
				ifTrue: [  
					"Transcript show: ('ended ', (p asString)); cr."
					
					"We have reached our destination"
					currentPoint := aPointEnd.
					
					[ currentPoint = aPointStart ] whileFalse: 
   						 [ 
							currentPoint := GREY at: currentPoint.
							returnList addFirst: currentPoint.
						].
					
					returnList addLast: aPointEnd.
					^returnList.
					].
				"Transcript show: ('adding ', (p asString)); cr."
				WHITE addLast: p.	
					
						].
					].
				 ].					
			].	
	 ].
	^returnList.
	
	
"
	public LinkedList<Point> bfs(Point start, Point end)
	{
		if (start == null || end == null || isOutOfRange(start) || isOutOfRange(end))
			return new LinkedList<Point>();

		if (bfsCache.contains(new pair<Point,Point>(start, end)))
		{
			return bfsCache.get(new pair(start, end));
		}
		LinkedList<Point> l = new LinkedList<Point>();

		HashSet<Point> BLACK = new HashSet<Point>();
		LinkedList<Point> WHITE = new LinkedList<Point>();
		HashMap<Point, Point> GREY = new HashMap<Point, Point>();

		WHITE.add(start);

		while (WHITE.size() > 0)
		{
			Point current = WHITE.get(0);

			WHITE.remove(0);
			
			HashSet<Point> t = getTouching(current.x, current.y);
			for (Point p : t)
			{
				// if we can not move there
				if (isOutOfRange(p) || getFieldItem(p).isObstacleForMovement())
					continue;

				if (BLACK.contains(p))
					continue;

				BLACK.add(p);
				GREY.put(p, current);

				if (p.equals(end))
				{
					// backtrack path
					current = end;
					while (!current.equals(start))
					{
						current = GREY.get(current);
						l.addFirst(current);
					}
					l.addLast(end);

					bfsCache.add(new pair(start, end), l);
					return l;
				}
				
				WHITE.add(p);
			}
		}
		bfsCache.add(new pair<Point,Point>(start, end), l);
		return l;
	}"