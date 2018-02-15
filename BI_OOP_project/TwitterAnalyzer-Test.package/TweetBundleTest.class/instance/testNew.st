tests
testNew
	|tb|
	tb := TweetBundle new.
	self assert: tb class equals: TweetBundle.
	self assert: tb count equals: 0.
	self assert: tb tweets equals: #().