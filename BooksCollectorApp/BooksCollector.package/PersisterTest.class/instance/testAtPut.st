tests
testAtPut
	| p |
	p := Persister at: 'A' put: 'test'.
	self assert: (p at: 'A') equals: 'test'.