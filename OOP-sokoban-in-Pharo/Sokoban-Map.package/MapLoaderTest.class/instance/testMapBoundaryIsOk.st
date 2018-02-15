tests
testMapBoundaryIsOk
	|res|
	mapLoader map: #(#($B $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	mapLoader width: 8 .
	mapLoader height: 5 .
	res := mapLoader mapBoundaryIsOk .
	self assert: (res).
	mapLoader map: #(#($F $B $B $B $B $B $B $B) #($B $W $W $W $W $W $W $B) #($B $W $F $P $K $T $W $B) #($B $W $W $W $W $W $W $B) #($B $B $B $B $B $B $B $B)).
	res := mapLoader mapBoundaryIsOk .
	self assert: (res = false).
