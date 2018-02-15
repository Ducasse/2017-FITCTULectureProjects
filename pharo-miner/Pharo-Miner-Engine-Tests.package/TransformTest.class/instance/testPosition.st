tests
testPosition
	| tr |
	tr := Transform new.
	self assert: tr position equals: 0@0.
	
	tr position: 10@5.
	self assert: tr position equals: 10@5