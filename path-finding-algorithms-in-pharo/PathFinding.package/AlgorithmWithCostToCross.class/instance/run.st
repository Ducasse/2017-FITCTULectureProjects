run
run
	| tile |
	
	distances := Dictionary new.
	distances2 := Dictionary new.
	
	distances at: start put: (Euclidean distanceFrom: start to: end).
	distances2 at: start put: 0.0.
	
	collection distances: distances.	
		
	collection push: start.
	[ collection isEmpty ]
		whileFalse: 
		[ 
			tile := collection pop.
			(tile found) ifFalse: [ 
				tile found: true.
				(tile == end) ifTrue: [ ^ self. ].
				(map neighbours: tile) do: [ :x | self processNeighbour: x of: tile ].
				100 milliSeconds wait.
			].
		].
	
	self processNeighbour: end of: start.