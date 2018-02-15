tests
testFaces
	| d |
	d := Die new.
	d faces: 3.
	self assert: d faces equals: 3.