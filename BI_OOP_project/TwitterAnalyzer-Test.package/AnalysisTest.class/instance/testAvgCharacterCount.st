tests
testAvgCharacterCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an avgCharacterCount equals: 0.