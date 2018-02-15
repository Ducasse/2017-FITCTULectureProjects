tests
testNullScoreComp
	| score1 score2 |
	score1 := UndifinedScore new.
	score2 := Score value: 2.
	self assert: score1 > score2