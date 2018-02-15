tests
testSetMines
   "Check if board generates right amount of mines"
		
	100 timesRepeat: [
		| b m amount tile |
		
		"Create board with mines"
		m := 40 atRandom.
		b := Board x: 10 y: 10 mines: m.
		
		"Count mines"
		amount := 0.
		1 to: (b y) do: [ :inY |
			1 to: (b x) do: [ :inX |
				tile := b getTileAtX: inX Y: inY.
				(tile isTileMine) ifTrue: [ amount := amount + 1 ].
			].
		].
	
		"Assert"
		Integer assert: amount equals: (b mines). 
	].