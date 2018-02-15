tests
testGenerateCoroutineWith
	| c g |
	c := Controller new.
	test := 0.
	g := Generator on: (c generateCoroutineWith: [ test := test + 1 ]).
	self assert: test equals: 1.
	g next.
	self assert: test equals: 2.
	g next.
	self assert: test equals: 3.