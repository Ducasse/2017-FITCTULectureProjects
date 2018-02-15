tests
testPush
	| queue |
	queue := TileQueue new.
	queue push: 1.
	queue push: 2.
	queue push: 3.
	self assert: queue first value equals: 1.
	self assert: queue last value equals: 3. 