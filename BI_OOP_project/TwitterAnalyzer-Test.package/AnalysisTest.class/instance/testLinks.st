tests
testLinks
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an links size equals: 0.
	self assert: an links class equals: Array.