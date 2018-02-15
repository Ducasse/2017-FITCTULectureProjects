tests
testCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an count equals: 0.