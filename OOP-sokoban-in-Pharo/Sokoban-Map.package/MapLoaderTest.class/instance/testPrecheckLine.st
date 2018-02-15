tests
testPrecheckLine
	|res|
	res := mapLoader precheckLine: 'w:5'.
	self assert: (res = $w).
	res := mapLoader precheckLine: 'w:'.
	self assert: (res isNil ).
	res := mapLoader precheckLine: 'w 8'.
	self assert: (res isNil ).
