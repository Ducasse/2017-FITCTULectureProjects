mapAlgorithms
squaresAround: x Y: y
	|l|
	l := Set new.
	l add: (Point x: (x + 1) y: (y + 1)).
	l add: (Point x: (x + 1) y: y).
	l add: (Point x: (x + 1) y: (y - 1)).
	
	l add: (Point x: (x - 1) y: (y + 1)).
	l add: (Point x: (x - 1) y: y).
	l add: (Point x: (x - 1) y: (y - 1)).
	
	l add: (Point x: x y: (y + 1)).
	l add: (Point x: x y: (y - 1)).
	^l