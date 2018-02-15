tests-accessing
testWall
	|tile|
	tile := Wall new.
	tile forceLayout.
	self assert: tile width equals: 48.
	self assert: tile height equals: 48.
	self assert: tile passable equals: false.