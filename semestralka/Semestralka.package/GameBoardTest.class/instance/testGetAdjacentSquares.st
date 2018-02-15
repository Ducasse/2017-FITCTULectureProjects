searching in game board tests
testGetAdjacentSquares
	| gameBoard  computeSquares rightSquares aBoolean|
	gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
	rightSquares := OrderedCollection with: (gameBoard getSquare:(1@2)) with: (gameBoard getSquare:(2@1)).
	
	computeSquares := gameBoard getAdjacentSquares: (gameBoard getSquare:(1@1)).
	aBoolean := computeSquares allSatisfy: [ :square | 	(rightSquares includes: square) ].
	self assert: (computeSquares size) equals: 2.
	self assert: aBoolean equals: true.