tests
testScale
	| tr |
	tr := Transform new.
	self assert: tr scale equals: 1@1.
	
	tr scale: Vector2D left.
	self assert: tr scale equals: Vector2D left.
	
	tr scale: 10@5.
	self assert: tr scale equals: 10@5