printing
printOnTranscript
	| blockRow blockDecide convert |
	
	blockDecide := [ :square |
		| char | 
		(square getObject amIUnit not) ifTrue: [ char := '. ' ] ifFalse: [ char := 'x ' ].
		char].
	
	blockRow := [ :atRow :takeColumns |
		((1 to:takeColumns) asOrderedCollection
			collect: [ :col |
				blockDecide value:(self getSquare:(col@atRow))			
			])
		].
	

	(1 to: (self getSize y)) do: [ :aRow |
	convert := String streamContents: [ :stream |
(blockRow value:aRow value: (self getSize x)) asStringOn: stream delimiter: ' ' ].
		Transcript show:  convert.
		Transcript cr.
		].
	
	Transcript cr ; show:  '-------------------------------' ; cr.
	
	