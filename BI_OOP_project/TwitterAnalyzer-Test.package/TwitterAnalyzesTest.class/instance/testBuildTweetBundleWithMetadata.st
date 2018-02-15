tests
testBuildTweetBundleWithMetadata
	| tweets meta tb |
	tweets := LinkedList new.
	tweets
		add: (Tweet new status: 'ahoj');
		add: (Tweet new status: 'zdar');
		add: (Tweet new status: 'cus');
		add: (Tweet new status: 'tepic').
	meta := Dictionary new.
	tb := TwitterAnalyzer instance buildTweetBundle: tweets withMetadata: meta.
	self assert: tb tweets class equals: Array.
	self assert: tb count equals: 4.
	self assert: tb metadata class equals: Dictionary.
	self assert: tb metadata == meta.