tests
testPop
	| queue |
	queue := TileQueue new.
	queue push: 1.
	queue push: 2.
	queue push: 3.
	self assert: queue pop equals: 1.
	self assert: queue pop equals: 2. 
	self assert: queue pop equals: 3.
	self should: [ queue pop ] raise: CollectionIsEmpty.