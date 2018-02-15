printing
printScore
	Transcript cr.
	(moveCount <= optimalScore ) 
		ifTrue: [ Transcript show: '***']
		ifFalse: [ 
			((moveCount > optimalScore ) & (moveCount < (2*optimalScore) ) )
				ifTrue: [ Transcript show: '**' ] 
				ifFalse: [ Transcript show: '*' ]
				].