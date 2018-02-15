tests
testPosition
	| c |
	c := Camera new.
	GameObject new addBehaviour: Transform new; addBehaviour: c.
	self assert: c position equals: 0@0.
	c offset: 2@1.
	c gameObject transform position: 5@1.
	self assert: c position equals: 7@2.