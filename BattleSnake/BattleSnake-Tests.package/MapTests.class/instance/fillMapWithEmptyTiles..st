tests
fillMapWithEmptyTiles: aMap
	1 to: aMap sizeX do: 
		[ :i | 1 to: aMap sizeY do: [ :j | (aMap tiles at: i) at: j put: EmptyTile new ] ].
	^ aMap