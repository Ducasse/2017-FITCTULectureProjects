tests
testAStar
	| tg algo |
	tg := TileGrid defaultMap.
	algo := Dijkstra new.
	algo tilemap: tg.
	algo startRow: 5 column: 1.
	algo targetRow: 5.
	algo targetColumn: 4.
	
	algo nextStep.
	self assert: ((tg x:1 y:4) state) equals: (TileState processing).
	algo nextStep.
	algo nextStep.
	algo nextStep.	
	algo nextStep.	
	algo nextStep.	
	algo nextStep.	
	algo nextStep.	
	algo nextStep.	
	algo nextStep.	

	self assert: ((tg x:3 y:1) state) equals: (TileState processing).												
	self assert: ((tg x:1 y:2) state) equals: (TileState processed).
