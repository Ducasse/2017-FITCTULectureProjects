tests
testTweets
	| an |
	an := Analysis of: TweetBundle new.
	
	self assert: an tweets class equals: TweetBundle.	