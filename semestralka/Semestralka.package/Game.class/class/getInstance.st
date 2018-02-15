singleton
getInstance
	instance ifNil: [ instance := self new ].
	^ instance.