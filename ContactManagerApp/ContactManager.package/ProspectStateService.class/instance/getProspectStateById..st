selection
getProspectStateById: anIndex
	anIndex isNil
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ self class prospectStates at: anIndex ]