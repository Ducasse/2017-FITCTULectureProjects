tests
testMapStructureIsOk
	|ret|
	mapLoader width: 8 .
	mapLoader height: 5 .
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader mapStructureIsOk .
	self assert: (ret) .
	mapLoader map:#(#($B $F $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $P $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader mapStructureIsOk .
	self assert: (ret = false) .
