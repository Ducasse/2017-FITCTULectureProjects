tests
testStatus
	| st |
	st := Tweet new.
	st status: 'ahoj'.
	self assert: st class equals: Tweet.
	self assert: st status equals: 'ahoj'.