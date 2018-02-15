tests
testAsString
	| tw |
	tw := Tweet new.
	tw status: 'ahoj'.
	tw userScreenName: 'troll'.
	self assert: tw asString equals: '@troll:', String crlf, String tab, 'ahoj'.