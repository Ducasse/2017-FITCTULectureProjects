tests
testScoreValue
	| tile |
	tile := IronTile new.
	self assert: tile scoreValue equals: 50