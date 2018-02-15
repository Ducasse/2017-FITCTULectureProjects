as yet unclassified
clearInstance
	instance isNil ifTrue: [ ^ self ].
	instance stop.
	instance := nil