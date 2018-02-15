tests
testBlocksCntsIsOk
	|ret|
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	mapLoader countBlocks .
	ret := mapLoader blocksCntsIsOk .
	self assert: (ret) .
	mapLoader map:#(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $P $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	mapLoader countBlocks .
	ret := mapLoader blocksCntsIsOk .
	self assert: (ret = false) .
