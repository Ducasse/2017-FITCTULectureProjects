validation
validateRemove: anEntity
	| res |
	" remove all elements of previous validation"
	errors isNil
		ifTrue: [ errors := OrderedCollection new ]
		ifFalse: [ errors removeAll ].

	" run all registered validators"
	res := true.
	anEntity validatorsOnRemove
		do: [ :v | 
			| isValid validator vname msg |
			"v is the array of two elements: 
				1 validator class name to be resolved
				2 msg to be shown "
			vname := v at: 1.
			msg := v at: 2.
			validator := ServiceLocatorDefault resolveWithName: vname.
			isValid := validator validateEntity: anEntity withMessage: msg.
			isValid
				ifFalse: [ errors addLast: validator getMessage.
					res := false ] ].
	^ res