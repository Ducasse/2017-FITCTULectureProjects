tests
testMinCharacterCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an minCharacterCount equals: 0.