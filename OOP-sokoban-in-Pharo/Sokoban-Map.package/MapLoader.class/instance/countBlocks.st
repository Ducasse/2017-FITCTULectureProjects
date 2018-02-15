internal processing
countBlocks
	map do: [ :each |
		each do: [ :each2 | |curr|
			curr := blocks at: each2 .
			blocks at: each2 put: ( curr + 1 ) . ]] .
