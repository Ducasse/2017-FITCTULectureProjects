tests
testIsWallOrBg
	|res|
	res := mapLoader isWallOrBg: $B .
	self assert: (res).
	res := mapLoader isWallOrBg: $W .
	self assert: (res).
	res := mapLoader isWallOrBg: $P .
	self assert: (res = false).
