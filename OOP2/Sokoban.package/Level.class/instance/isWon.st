testing
isWon
	boxes
		do: [ :each | 
			each onTarget
				ifFalse: [ ^ false ] ].
	bestScore > currentScore
		ifTrue: [ bestScore := Score value: currentScore value ].
	^ true
	