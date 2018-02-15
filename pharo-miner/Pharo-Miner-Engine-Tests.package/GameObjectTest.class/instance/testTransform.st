tests
testTransform
	| go |
	go := GameObject new addBehaviour: Transform new; yourself.
	self assert: go transform equals: (go getBehaviour: Transform)