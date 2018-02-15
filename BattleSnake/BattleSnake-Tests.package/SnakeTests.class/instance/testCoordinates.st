tests
testCoordinates
	| s expect|
	expect := {1@2. 4@3}.
	s := Snake new.
	s coordinates: {1@2. 4@3}.
	self assert: s coordinates  equals: expect .