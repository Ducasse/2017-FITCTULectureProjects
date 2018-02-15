selection
getCountryById: anIndex
	anIndex isNil
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ self class countries at: anIndex ]