tests
testMoveOnTo
	| game map miner | 
	game := MiGame new.
	map := game map.
	miner := game miner .
	
	self assert: ((map moveOn: miner to: (1@1)) class = MiCannotMoveResponse ) not .
	
	0 to: (-10) do: [ :i| 
		0 to: (-10) do: [ :j| 
			self assert: (map moveOn: miner to: (i@j)) class = MiCannotMoveResponse .
		].
		map height+1 to: map height +10 do: [ :j| 
			self assert: (map moveOn: miner to: (i@j)) class = MiCannotMoveResponse .
		]
	].

	map width+1 to: map width + 10 do: [ :i| 
		map height+1 to: map height +10 do: [ :j| 
			self assert: (map moveOn: miner to: (i@j)) class = MiCannotMoveResponse .
		].
		0 to: (-10) do: [ :j| 
			self assert: (map moveOn: miner to: (i@j)) class = MiCannotMoveResponse .
		].
	]
	
	
