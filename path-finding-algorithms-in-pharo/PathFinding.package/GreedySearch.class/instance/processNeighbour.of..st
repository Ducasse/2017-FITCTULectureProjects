run
processNeighbour: neighbour of: tile
	
	((neighbour blocked not )
		and: neighbour found not)
		ifFalse: [ ^ tile ].
	
	distances at: neighbour put: (Euclidean distanceFrom: neighbour to: end).
	path add: (neighbour -> tile).
	collection push: neighbour.
	
	"Transcript
		show: neighbour x;
		show: ' ';
		show: neighbour y;
		cr."