accessing
toggleMark
	((self isMarked) = true)
	ifTrue: [ self unmark ] 
	ifFalse: [ self mark ].