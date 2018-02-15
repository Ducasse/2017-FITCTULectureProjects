tests
testTweet
	| st |
	st := Status new.
	self assert: st tweet class equals: Dictionary.