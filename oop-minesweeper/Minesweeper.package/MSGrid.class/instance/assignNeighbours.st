private
assignNeighbours
	grid do: [ :field |
		| x y |
		x := field coordinates x.
		y := field coordinates y.
		(x-1) to: (x+1) do: [ :i | 
			(y-1) to: (y+1) do: [ :j | 
				((i == x and: j == y) or:
				 (i < 1 or: (i > grid rowCount or: (j < 1 or: j > grid columnCount))))
					ifFalse: [   
						field addNeighbour: (grid at: i at: j).
					]
			]
		]
	]
