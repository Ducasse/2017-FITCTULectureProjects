run
processNeighbour: neighbour of: tile
	| distance |
	
	((neighbour blocked not ) and: (neighbour found not)) ifFalse: [ ^ tile ].
	
	distance := (distances at: tile) + (neighbour costToCross).
	
	distances at: neighbour
		ifPresent: [ 
			(distance < distances at: neighbour ) ifTrue: [ 
				distances at: neighbour put: distance.
			]
		]
		ifAbsent: [
			distances at: neighbour put: distance.
			collection push: neighbour.
			path add: (neighbour -> tile).
		].

	"Transcript
		show: neighbour x;
		show: ' ';
		show: neighbour y;
		cr."