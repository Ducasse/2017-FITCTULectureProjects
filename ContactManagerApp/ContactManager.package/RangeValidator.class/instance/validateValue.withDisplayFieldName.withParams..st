validation
validateValue: value withDisplayFieldName: fname withParams: params
	value isNil
		ifTrue: [ ^ true ]
		ifFalse: [ | x |
			x := 0.
			fieldDisplayName := fname.
			min := params at: 1.
			max := params at: 2.
			[ x := value asNumber ]
				on: Error
				do: [ ^ false ].
			min ifNil: [ ^ x <= max ].
			max ifNil: [ ^ x >= min ].
			^ x >= min and: x <= max ]