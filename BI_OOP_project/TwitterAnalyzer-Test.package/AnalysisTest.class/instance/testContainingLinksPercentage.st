tests
testContainingLinksPercentage
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an containingLinksPercentage equals: 0.