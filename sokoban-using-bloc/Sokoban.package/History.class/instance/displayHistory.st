printing
displayHistory
	| movelist |
	movelist := OrderedCollection new.
	1 to: current do: [ :i | movelist add: (i -> (moves at: i) detailString) ].
	current < moves size
		ifFalse: [ ^ movelist ].
	movelist add: ('Current position' -> '') .
	current + 1 to: moves size do: [ :i | movelist add: (i -> (moves at: i) detailString) ].
	^ movelist
	
	
	