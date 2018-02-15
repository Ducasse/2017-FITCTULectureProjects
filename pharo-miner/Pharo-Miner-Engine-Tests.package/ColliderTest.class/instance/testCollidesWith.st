tests
testCollidesWith
	| go1 go2 sh1 sh2 col1 col2 |
	sh1 := RectangleShape new offset: 0@0; width: 5; height: 5.
	col1 := Collider new colliderShape: sh1.
	go1 := GameObject new addBehaviour: (Transform new position: 0@0); addBehaviour: col1; yourself.
	sh2 := RectangleShape new offset: 0@0; width: 5; height: 5.
	col2 := Collider new colliderShape: sh2.
	go2 := GameObject new addBehaviour: (Transform new position: 0@0); addBehaviour: col2; yourself.
	
	self assert: (col1 collidesWith: col2).
	go2 transform position: 100@100.
	self assert: (col1 collidesWith: col2) not.