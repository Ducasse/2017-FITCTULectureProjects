tests
testProcessNeighbourOf
	| algorithm testTile testNeighbour dictionary |
	algorithm := AlgorithmWithoutCostToCross basicNew.
	algorithm testCollection.
	algorithm path: Dictionary new.
	testTile := MapTileModelGrass new.
	testNeighbour := MapTileModelSwamp new.
	algorithm processNeighbour: testNeighbour of: testTile.
	self assert: algorithm collection pop equals: testNeighbour.
	self assert: algorithm collection isEmpty equals: true.
	dictionary := Dictionary new.
	dictionary add: (testNeighbour -> testTile).
	self assert: algorithm path equals: dictionary.