accessing
uniqueInstance
	uniqueinstance ifNil: [ uniqueinstance := self basicNew ].
	^ uniqueinstance