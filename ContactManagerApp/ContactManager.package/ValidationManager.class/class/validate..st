validation
validate: anEntity
	| res |
	" remove all elements of previous validation"
	errors isNil
		ifTrue: [ errors := OrderedCollection new ]
		ifFalse: [ errors removeAll ].

	" run all registered validators"
	res := true.
	anEntity validators
		do: [ :v | 
			| isValid validator vname fname dfname |
			"v is the array of three or more elements: 
				1. entity field name
				2 validator class name to be resolved
				3. field display name to be shown 
				are required;
				other elements are params for the validator"
			fname := v at: 1.
			vname := v at: 2.
			dfname := v at: 3.
			validator := ServiceLocatorDefault resolveWithName: vname.
			isValid := v size > 3
				ifTrue: [ validator validateValue: (anEntity instVarNamed: fname) withDisplayFieldName: dfname withParams: (v copyFrom: 4 to: v size) ]
				ifFalse: [ validator validateValue: (anEntity instVarNamed: fname) withDisplayFieldName: dfname ].
			isValid
				ifFalse: [ errors addLast: validator getMessage.
					res := false ] ].
	^ res