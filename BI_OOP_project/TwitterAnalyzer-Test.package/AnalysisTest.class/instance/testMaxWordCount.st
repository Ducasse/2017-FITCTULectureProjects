tests
testMaxWordCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an maxWordCount equals: 0.