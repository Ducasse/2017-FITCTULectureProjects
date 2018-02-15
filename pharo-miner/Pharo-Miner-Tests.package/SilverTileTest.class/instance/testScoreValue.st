tests
testScoreValue
	| tile |
	tile := SilverTile new.
	self assert: tile scoreValue equals: 500