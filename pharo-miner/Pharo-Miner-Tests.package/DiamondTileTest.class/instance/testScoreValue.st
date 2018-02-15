tests
testScoreValue
	| tile |
	tile := DiamondTile new.
	self assert: tile scoreValue equals: 10000