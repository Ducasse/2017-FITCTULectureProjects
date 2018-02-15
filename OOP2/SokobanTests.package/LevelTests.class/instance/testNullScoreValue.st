tests
testNullScoreValue
	| score1|
	score1 := UndifinedScore new.
	self assert: score1 value equals: '<?>'