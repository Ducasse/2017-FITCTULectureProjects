instance creation
uniqueInstance
	UniqueInstance isNil 
		ifTrue: [ UniqueInstance := self basicNew initialize] .
	^ UniqueInstance