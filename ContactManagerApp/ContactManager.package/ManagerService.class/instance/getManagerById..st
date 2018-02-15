selection
getManagerById: anIndex
	(anIndex isNil or: anIndex = '')
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ self class managers at: anIndex ]