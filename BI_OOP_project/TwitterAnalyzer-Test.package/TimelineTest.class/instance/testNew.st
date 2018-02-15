tests
testNew
	|ti|
	ti := Timeline new.
	self assert: ti class equals: Timeline.
	self assert: ti count equals: 0.
	self assert: ti tweets equals: #().