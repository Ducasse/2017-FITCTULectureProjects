accessing
onTurn
	(linkedList isEmpty) ifTrue: [ ^ self error: 'cannot turn with empty list' ].
	^ (linkedList at: index)