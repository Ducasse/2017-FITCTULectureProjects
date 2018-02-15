tests
testMetadata
	|tb|
	tb := TweetBundle new.
	tb metadata: Dictionary new.
	self assert: tb metadata class equals: Dictionary.
	self assert: tb metadata size equals: 0.