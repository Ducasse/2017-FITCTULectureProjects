printing
printOn: aStream
	1 to: current do: [ :i | (moves at: i) printOn: aStream ].
	current < moves size
		ifFalse: [ ^ self ].
	aStream nextPut: $*.
	current + 1 to: moves size do: [ :i | (moves at: i) printOn: aStream ]