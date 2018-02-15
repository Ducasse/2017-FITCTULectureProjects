tests
testAsString
	| st |
	st := Status new status: 'ahoj'.
	self assert: st asString equals: 'ahoj'.