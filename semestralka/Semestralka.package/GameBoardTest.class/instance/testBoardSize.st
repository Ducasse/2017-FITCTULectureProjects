tests-accesing
testBoardSize
	|b|
	b := GameBoard createWithWidth: 5 andHeight: 3.
	self assert: (b getSquare:(1@1)) equals: (Square new:(1@1)).
	self assert: (b getSquare:(6@1)) equals: nil.
	self assert: (b getSquare:(4@2)) equals: (Square new:(4@2)).
	self assert: (b getSquare:(5@3)) equals: (Square new:(5@3)).
	self assert: (b getSquare:(0@0)) equals: nil.