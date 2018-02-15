tests
testMaxCharacterCount
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an maxCharacterCount equals: 0.