tests
testCreateCollisionEvent
	| go1 go2 sh1 sh2 col1 col2 res |
	sh1 := RectangleShape new offset: 0@0; width: 5; height: 5.
	col1 := Collider new colliderShape: sh1.
	go1 := GameObject new addBehaviour: (Transform new position: 0@0); addBehaviour: col1; yourself.
	sh2 := RectangleShape new offset: 2@0; width: 5; height: 5.
	col2 := Collider new colliderShape: sh2.
	go2 := GameObject new addBehaviour: (Transform new position: 0@0); addBehaviour: col2; yourself.
	res := col1 createCollisionEvent: col2.
	self assert: res collider equals: col2.
	self assert: res normal equals: Vector2D left.
	self assert: res depth equals: 3.