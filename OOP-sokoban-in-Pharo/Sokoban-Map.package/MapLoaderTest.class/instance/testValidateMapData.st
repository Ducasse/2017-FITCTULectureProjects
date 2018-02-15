tests
testValidateMapData
	|ret|
	mapLoader width: 8 .
	mapLoader height: 5 .
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader validateMapData .
	self assert: (ret) .
	mapLoader map:#(#($X $W $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $P $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader validateMapData .
	self assert: (ret = false) .
