tests
testMostFrequentCharacters
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an mostFrequentCharacters size equals: 0.
	self assert: an mostFrequentCharacters class equals: Array.