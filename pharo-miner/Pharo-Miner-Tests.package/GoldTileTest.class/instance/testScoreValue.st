tests
testScoreValue
	| tile |
	tile := GoldTile new.
	self assert: tile scoreValue equals: 1000