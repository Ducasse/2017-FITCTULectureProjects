tests
testCalculateMovement
	| go rb tr |
	rb := RigidBody new speed: 0@0.
	tr := Transform new position: 0@0.
	go := GameObject new addBehaviour: tr; addBehaviour: rb.
	rb calculateMovement: 1.
	self assert: tr position equals: 0@0.
	rb speed: 5@1.
	rb calculateMovement: 1.
	self assert: tr position equals: 5@1.
	rb calculateMovement: 2.
	self assert: tr position equals: 15@3.
	