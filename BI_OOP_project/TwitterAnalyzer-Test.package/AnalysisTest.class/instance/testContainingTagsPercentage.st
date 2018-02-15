tests
testContainingTagsPercentage
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an containingTagsPercentage equals: 0.