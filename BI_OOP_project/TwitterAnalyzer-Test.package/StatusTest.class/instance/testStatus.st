tests
testStatus
	| st |
	st := Status new status: 'ahoj'.
	self assert: st class equals: Status.
	self assert: st status equals: 'ahoj'.