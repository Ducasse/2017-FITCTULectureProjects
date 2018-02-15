tests
testScoreValue
	| tile |
	tile := DirtTile new.
	self assert: tile scoreValue equals: 0