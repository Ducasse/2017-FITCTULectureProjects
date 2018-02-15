tests
testMinWordCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an minWordCount equals: 0.