tests
testColliderShape
	| sh col |
	sh := Shape2DTestChild new.
	col := Collider new colliderShape: sh.
	self assert: col colliderShape equals: sh.