accessing
uniqueInstance
	^ uniqueInstance ifNil: [ uniqueInstance := self withPredefined ]