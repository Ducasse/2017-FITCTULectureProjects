run
processNeighbour: neighbour of: tile
	| distance |
	
	((neighbour blocked not ) and: (neighbour found not)) ifFalse: [ ^ tile ].
	
	distance := (distances2 at: tile) + (neighbour costToCross).
	
	distances at: neighbour
		ifPresent: [ 
			(distance < distances2 at: neighbour ) ifTrue: [ 
				distances2 at: neighbour put: distance.
			]
		]
		ifAbsent: [
			distances2 at: neighbour put: distance.
			collection push: neighbour.
			path add: (neighbour -> tile).
		].
	
	distances at: neighbour put: distance + (Euclidean distanceFrom: neighbour  to: end).

	"Transcript
		show: neighbour x;
		show: ' ';
		show: neighbour y;
		cr."