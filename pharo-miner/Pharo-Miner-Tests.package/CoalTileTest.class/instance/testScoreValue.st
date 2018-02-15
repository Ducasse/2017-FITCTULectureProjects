tests
testScoreValue
	|tile|
	tile := CoalTile new.
	self assert: tile scoreValue equals: 10.
	