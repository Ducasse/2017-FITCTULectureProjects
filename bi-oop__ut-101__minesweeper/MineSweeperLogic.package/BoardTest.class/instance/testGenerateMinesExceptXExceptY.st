tests
testGenerateMinesExceptXExceptY
   "Check if board generates right amount of mines"
		
	2000 timesRepeat: [
		| b m amount tile |
		
		"Create board with mines"
		m := 40 atRandom.
		b := Board new.
		b apiGenerateEmptyBoardX: 10 Y: 10 Mines: m.
		b generateMinesExceptX: 2 ExceptY: 2.
		
		"Count mines"
		amount := 0.
		1 to: (b y) do: [ :inY |
			1 to: (b x) do: [ :inX |
				tile := b getTileAtX: inX Y: inY.
				(tile isTileMine) ifTrue: [ amount := amount + 1 ].
			].
		].
	
		"Assert"
		self assert: amount equals: (b mines).
		self assert: (b getTileAtX: 2 Y: 2) isTileMine equals: false.
	].