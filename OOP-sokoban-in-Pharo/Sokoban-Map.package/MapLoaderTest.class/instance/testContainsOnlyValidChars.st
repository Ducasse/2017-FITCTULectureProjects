tests
testContainsOnlyValidChars
	|ret|
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader containsOnlyValidChars .
	self assert: (ret) .
	mapLoader map:#(#($X $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	ret := mapLoader containsOnlyValidChars .
	self assert: (ret = false) .
