printing
printTranscript
	Transcript cr.
	1 to: board height do: [ :y | 
		1 to: board width do: [ :x | 
			Transcript show: (self atX: x Y: y) literal.
			Transcript show: ' ' ].
		Transcript cr ].
	Transcript show: 'Moves ' , (moveCount asString ). 
	Transcript cr.
	Transcript show: 'OptimalScore ', (optimalScore asString ).