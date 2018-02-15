tests
testBgNeighboursIsOk
	|ret|
	mapLoader width: 8 .
	mapLoader height: 5 .
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader bgNeighboursIsOk .
	self assert: (ret) .
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $B $P $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader bgNeighboursIsOk .
	self assert: (ret = false) .
