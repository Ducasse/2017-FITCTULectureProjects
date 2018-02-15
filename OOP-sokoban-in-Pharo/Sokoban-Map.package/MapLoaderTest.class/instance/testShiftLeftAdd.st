tests
testShiftLeftAdd
	|ret|
	ret := mapLoader shiftLeft: 99 add: 5 .
	self assert: (ret = 995).
