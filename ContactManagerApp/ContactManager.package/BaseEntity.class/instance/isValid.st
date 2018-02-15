testing
isValid
	self validators isNil
		ifTrue: [ ^ true ]
		ifFalse: [ self validators isEmpty
				ifTrue: [ ^ true ]
				ifFalse: [ ^ ValidationManager validate: self onGroup: self class name ] ]