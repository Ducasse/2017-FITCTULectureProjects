mapAlgorithms
bfs: x Y: y tox: tox toy: toy
	^(self bfs: (Point x: x y: y) pointEnd: (Point x: tox y: toy)).
	