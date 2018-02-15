tests
testTranslateBy
	| s |
	s := Shape2DTestChild new.
	s offset: 0@0.
	s translateBy: 5 @ 10.
	self assert: s offset equals: 5 @ 10