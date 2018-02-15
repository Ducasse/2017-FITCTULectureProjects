tests
testLoadNumberFromLine
	|ret|
	ret := mapLoader loadNumberFromLine: 'w:123' .
	self assert: (ret = 123).
	ret := mapLoader loadNumberFromLine: 'w:xxx' .
	self assert: (ret isNil ).