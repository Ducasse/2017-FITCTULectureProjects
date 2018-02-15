tests
testInitialize
	| br |
	br := Behaviour new.
	self assert: br active equals: true.
	self assert: br coroutines equals: OrderedCollection new.