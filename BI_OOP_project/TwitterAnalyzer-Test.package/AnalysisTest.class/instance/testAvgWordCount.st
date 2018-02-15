tests
testAvgWordCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an avgWordCount equals: 0.