checking
checkIntegerInput
	^ ((((yearTextField text asInteger) isNotNil) and: ((yearTextField text asInteger) > 0)) 
		and: (((countTextField text asInteger) isNotNil) and: ((countTextField text asInteger) > -1))).