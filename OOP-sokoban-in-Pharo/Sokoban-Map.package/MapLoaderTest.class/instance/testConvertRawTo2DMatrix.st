tests
testConvertRawTo2DMatrix
	|raw|
	raw := #(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	mapLoader width: 8 .
	mapLoader height: 5 .
	mapLoader convertRawTo2DMatrix: raw .
	self assert: (mapLoader map = raw).
