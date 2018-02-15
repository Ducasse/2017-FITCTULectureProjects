tests-accessing
testGrass
	|tile|
	tile := Grass new.
	tile forceLayout.
	self assert: tile width equals: 48.
	self assert: tile height equals: 48.
	self assert: tile passable equals: true.
	self assert: tile cost equals: 1.