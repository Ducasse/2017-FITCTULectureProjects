tests
testTags
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an tags size equals: 0.
	self assert: an tags class equals: Bag.