tests
testDate
	| st |
	st := Status new date: '3.1.2018'.
	self assert: st date equals: '3.1.2018'.