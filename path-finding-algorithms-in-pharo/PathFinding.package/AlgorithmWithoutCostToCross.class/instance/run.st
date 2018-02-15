run
run
	| tile |
	
	collection push: start.
	
	[ collection isEmpty ]
		whileFalse: 
		[ 
			tile := collection pop.
			(tile found) ifFalse: [ 
				tile found: true.
				(tile == end) ifTrue: [ ^ self ].
				(map neighbours: tile) do: [ :x | self processNeighbour: x of: tile ].
				100 milliSeconds wait.
			].
		].
	self processNeighbour: end of: start.