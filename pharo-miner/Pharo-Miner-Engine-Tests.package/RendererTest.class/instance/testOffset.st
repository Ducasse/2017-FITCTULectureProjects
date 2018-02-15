tests
testOffset
	| r |
	r := Renderer new.
	self assert: r offset equals: 0@0.
	r offset: 5@2.
	self assert: r offset equals: 5@2