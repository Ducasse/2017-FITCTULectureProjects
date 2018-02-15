run
run
	| tile |	
		
	distances := Dictionary new.
	distances at: start put: (Euclidean distanceFrom: start to: end).
	collection distances: distances.
	
	collection push: start.
	
	[ collection isEmpty ]
		whileFalse: 
		[ 
			tile := collection pop.
			(tile found) ifFalse: [ 
				tile found: true.
				(tile == end) ifTrue: [ ^ true ].
				(map neighbours: tile) do: [ :x | self processNeighbour: x of: tile ].
				100 milliSeconds wait.
			].
		].
	
	^ false.