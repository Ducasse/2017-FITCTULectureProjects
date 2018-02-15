tests
testScoreComp
	| score1 score2 |
	score1 := Score value: 10.
	score2 := Score value: 2.
	self assert: score1 > score2