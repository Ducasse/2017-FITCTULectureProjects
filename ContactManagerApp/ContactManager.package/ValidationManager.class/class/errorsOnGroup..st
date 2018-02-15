accessing
errorsOnGroup: aGroup
	group = aGroup
		ifTrue: [ ^ errors ]
		ifFalse: [ ^ OrderedCollection new ]