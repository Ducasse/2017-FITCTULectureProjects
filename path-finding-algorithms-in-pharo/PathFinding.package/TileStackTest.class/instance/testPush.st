tests
testPush
	| stack |
	stack := TileStack new.
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self assert: stack first value equals: 3.
	self assert: stack last value equals: 1. 