tests
testCollisionArea
	| go tr col |
	tr := Transform new position: 0@0.
	col := Collider new colliderShape: Shape2DTestChild new.
	go := GameObject new addBehaviour: tr; addBehaviour: col.
	
	col offset: 3@ -5.
	self assert: col collisionArea equals: (Shape2DTestChild new offset: 3@ -5).
	tr position: 2@9.
	self assert: col collisionArea equals: (Shape2DTestChild new offset: 5@4).
	col colliderShape: (RectangleShape new offset: 1@0).
	self assert: col collisionArea equals: (RectangleShape new offset: 3@9).