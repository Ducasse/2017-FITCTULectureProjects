tests
testIsBetween1and9
	|ret|
	ret := mapLoader isBetween1and9: 58 .
	self assert: (ret = false) .
	ret := mapLoader isBetween1and9: 0 .
	self assert: (ret) .
