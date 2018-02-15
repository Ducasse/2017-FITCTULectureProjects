run
init
	queue := Heap sortBlock: [ :c1 :c2 | (c1 heuristicDist) <= (c2 heuristicDist) ].
	queue add: (tilemap x: (self startColumn) y: (self startRow)).

	0 to: (tilemap rows - 1) do: [ :i |
		0 to: (tilemap columns - 1) do: [ :j |
			(tilemap x: j y: i) distance: (Float infinity).
		]
	].
	(tilemap x: (self startColumn) y: (self startRow)) distance: 0.
	lastProcessed := nil.