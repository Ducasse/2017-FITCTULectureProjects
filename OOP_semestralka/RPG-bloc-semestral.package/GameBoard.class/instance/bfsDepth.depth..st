mapAlgorithms
bfsDepth: aPointStart depth: maxdepth
	|BLACK WHITE returnList currentPoint t nextDepthAt currentDepth|
	"finds all possible squares fround starting point up to selected depth"
	returnList := Set new.

	((self isOutOfRange: aPointStart) | (maxdepth < 1))
	ifTrue: [ ^returnList ].
	
	BLACK := Set new. 
	WHITE := LinkedList new. 
	
	WHITE add: aPointStart.
	nextDepthAt := (WHITE size).
	currentDepth := 0.
	
	[ WHITE isNotEmpty ] whileTrue: 
    [ 
		currentPoint := (WHITE first).
		WHITE removeFirst.
		BLACK add: currentPoint.
		
		"Transcript show: ('exploring ', (currentPoint asString)); cr."
		nextDepthAt := nextDepthAt - 1.
		
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
						returnList add: p.
						"Transcript show: ('adding ', (p asString)); cr."
						WHITE addLast: p.	
						].
					].
				 ].									 				
			].	
			
			(nextDepthAt = 0)
			ifTrue: [ 
				currentDepth := currentDepth + 1.
				(currentDepth = maxdepth)
				ifTrue: [ 
					^returnList.
					].
				nextDepthAt := (WHITE size).
				 ]
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