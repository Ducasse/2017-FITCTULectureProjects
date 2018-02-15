accessing
uniqueInstance
	instance ifNil: [ instance := self basicNew initialize ].
	^ instance