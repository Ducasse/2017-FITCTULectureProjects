tests
testIsValidChar
	|res|
	res := mapLoader isValidChar:  $B .
	self assert: (res).
	res := mapLoader isValidChar:  $W .
	self assert: (res).
	res := mapLoader isWallOrBg: $A .
	self assert: (res = false).
