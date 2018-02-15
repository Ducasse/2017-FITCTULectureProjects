accessing
move: dir
	| result |
	result := self movePlayer: dir.
	result
		ifTrue: [ moveCount := moveCount + 1 . currentScore value:moveCount ].
	^ result