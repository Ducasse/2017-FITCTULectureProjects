validation
containsOnlyValidChars
	map do: [ :each |
		( each allSatisfy: [ :each2 | self isValidChar: each2 ] )
			ifFalse: [ ^ false ]] .
	^ true .
