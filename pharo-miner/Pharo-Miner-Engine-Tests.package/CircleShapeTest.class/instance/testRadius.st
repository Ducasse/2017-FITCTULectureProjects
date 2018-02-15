tests
testRadius
	| c |
	c := CircleShape new.
	self assert: c radius equals: 1.
	c radius: 4.5.
	self assert: c radius equals: 4.5