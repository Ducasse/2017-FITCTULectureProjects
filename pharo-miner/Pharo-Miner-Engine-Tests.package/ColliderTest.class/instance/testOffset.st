tests
testOffset
	| sh col |
	sh := Shape2DTestChild new.
	col := Collider new colliderShape: sh.
	
	col offset: 3@ -5.
	self assert: sh offset equals: 3@ -5.
	sh offset: 2@8.
	self assert: col offset equals: 2@8.