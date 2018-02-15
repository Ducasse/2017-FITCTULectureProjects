tests
testHead
	| s expect|
	expect := 1@2.
	s := Snake new.
	s coordinates: {1@2. 4@3}.
	self assert: s head  equals: expect .