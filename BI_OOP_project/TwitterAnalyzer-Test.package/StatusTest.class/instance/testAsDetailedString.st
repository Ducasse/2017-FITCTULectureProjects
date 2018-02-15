tests
testAsDetailedString
	| st |
	st := Status new status: 'ahoj'.
	st date: '3.1.2018'.
	self assert: st asDetailedString equals: '3.1.2018', String crlf, 'ahoj'.