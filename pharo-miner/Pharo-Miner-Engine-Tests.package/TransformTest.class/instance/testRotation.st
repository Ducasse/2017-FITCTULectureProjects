tests
testRotation
	| tr |
	tr := Transform new.
	self assert: tr rotation equals: 0@0.
	
	tr rotation: Vector2D left.
	self assert: tr rotation equals: Vector2D left.
	
	tr rotation: 10@5.
	self assert: tr rotation closeTo: (10@5) normalized