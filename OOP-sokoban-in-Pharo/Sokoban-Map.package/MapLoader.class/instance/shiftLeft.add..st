internal processing
shiftLeft: aNr1 add: aNr2
	|res|
	res := ( aNr1 * 10 ) .
	res := ( res + aNr2 ) .
	^ ( res ) .
