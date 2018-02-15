tests
testUserScreenName
	| tw |
	tw := Tweet new.
	tw userScreenName: 'troll'.
	self assert: tw userScreenName equals: 'troll'.