tests
testPop
	| stack |
	stack := TileStack new.
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self assert: stack pop equals: 3.
	self assert: stack pop equals: 2. 
	self assert: stack pop equals: 1.
	self should: [ stack pop ] raise: CollectionIsEmpty.