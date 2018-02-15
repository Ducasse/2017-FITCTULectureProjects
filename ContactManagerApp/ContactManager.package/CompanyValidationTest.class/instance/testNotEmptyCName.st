tests
testNotEmptyCName
	| c |
	c := Company new
		cname: '1';
		country: 1;
		manager: 1.
	self assert: c isValid equals: true