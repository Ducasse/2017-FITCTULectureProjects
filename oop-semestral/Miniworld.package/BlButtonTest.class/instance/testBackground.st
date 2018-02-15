tests-accessing
testBackground
	| b |
	b := BlButton withText: 'TESTIN text'.
	self assert: b baseColor = Color red equals: false.
	b backgroundColor: Color red.
	self assert: b baseColor equals: Color red