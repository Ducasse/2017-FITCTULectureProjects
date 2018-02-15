accessing
reset
	uniqueInstance
		ifNotNil: [ uniqueInstance serviceDict removeAll.
			uniqueInstance := nil ]