printing
printOn: aStream
	(visited ifTrue: [ $V ] ifFalse: [ $X ]) putOn: aStream.