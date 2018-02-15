algorithms
clearStates	
	0 to: (grid rows - 1) do: [ :i |
		0 to: (grid columns - 1) do: [ :j |
			(((grid x: j y: i) state = TileState start)
			| ((grid x: j y: i) state = TileState end)) ifFalse: [ 
				(grid x: j y: i) state: TileState undiscovered.	
			]
		]
	].