tests
testTranslatedBy
	| s1 s2 |
	s1 := Shape2DTestChild new.
	s2 := s1 translatedBy: 5@10.
	self assert: s1 offset equals: 0 @ 0.
	self assert: s2 offset equals: 5 @ 10