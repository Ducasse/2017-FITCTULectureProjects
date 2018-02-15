tests
testIsReply
	| st |
	st := Status new.
	self assert: st isReply  equals: false.