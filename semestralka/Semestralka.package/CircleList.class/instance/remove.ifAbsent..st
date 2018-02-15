accessing
remove: anRemovingObject ifAbsent: aBlock
	|indexOfRemovingObj|
	self isEmpty ifTrue: [ ^ aBlock value ].
	
	indexOfRemovingObj := linkedList indexOf:anRemovingObject
	                                 startingAt:1
	                                 ifAbsent: [ ^ aBlock value ].
	
	(indexOfRemovingObj > index)
		ifTrue:
			[ linkedList remove: anRemovingObject ]
		ifFalse:
			[ linkedList remove: anRemovingObject.
			  index := index - 1].
	( (self isEmpty) | (linkedList size = 1) | (index <= 1) ) ifTrue: [ index := 1 ].