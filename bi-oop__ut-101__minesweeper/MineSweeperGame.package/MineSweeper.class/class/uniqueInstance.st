accessing
uniqueInstance
	instance isNil
		ifTrue: [ instance := self new ].
	^ instance