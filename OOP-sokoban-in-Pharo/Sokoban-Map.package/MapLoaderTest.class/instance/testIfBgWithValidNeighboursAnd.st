tests
testIfBgWithValidNeighboursAnd
	|ret|
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader ifBgWithValidNeighbours: 2 and: 2 .
	self assert: (ret).
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $B $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader ifBgWithValidNeighbours: 3 and: 3 .
	self assert: (ret = false).
