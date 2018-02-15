validation
validateValue: value withDisplayFieldName: fname
	fieldDisplayName := fname.
	value isNil
		ifTrue: [ ^ false ]
		ifFalse: [ | v |
			v := value asString.
			v isEmpty
				ifTrue: [ ^ false ]
				ifFalse: [ v := v trim.
					^ v ~= '' ] ]