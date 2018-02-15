tests
testGetTweetsByName
	| tw | tw := TwitterAnalyzer instance getTweetsByText: 'ahoj' type: nil count: nil geo: nil.
	
	self assert: tw class equals: TweetBundle.
	self assert: tw count > 3.