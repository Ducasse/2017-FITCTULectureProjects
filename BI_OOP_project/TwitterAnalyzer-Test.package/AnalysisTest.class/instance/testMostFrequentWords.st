tests
testMostFrequentWords
	| an |
	an := Analysis of: (TweetBundle fromList: LinkedList new).
	self assert: an mostFrequentWords size equals: 0.
	self assert: an mostFrequentWords class equals: Array.