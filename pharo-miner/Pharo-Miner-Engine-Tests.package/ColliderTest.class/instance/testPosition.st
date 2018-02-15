tests
testPosition
	| go tr col |
	tr := Transform new position: 0@0.
	col := Collider new colliderShape: Shape2DTestChild new.
	go := GameObject new addBehaviour: tr; addBehaviour: col.
	
	col offset: 0@0.
	self assert: col position equals: 0@0.
	col offset: 3@ -5.
	self assert: col position equals: 3@ -5.
	tr position: -1@2.
	self assert: col position equals: 2@ -3.