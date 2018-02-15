tests
testPrintWith
	| tw |
	tw := Tweet new.
	tw status: 'ahoj'.
	self assert: ((tw printWith: (VisitorPrinter new))) equals: '@:', String crlf, String tab, 'ahoj'. 