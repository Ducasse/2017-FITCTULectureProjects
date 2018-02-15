accessing
nextTurn
	(linkedList isEmpty) ifTrue: [ ^ self error: 'cannot turn with empty list' ].
	index := index + 1.
	(index > linkedList size ) ifTrue: [ index := 1 ].
	^ (linkedList at: index)