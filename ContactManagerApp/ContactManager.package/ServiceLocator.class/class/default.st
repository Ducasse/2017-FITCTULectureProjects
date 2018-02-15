instance creation
default
	uniqueInstance ifNil: [ uniqueInstance := self basicNew initialize ].
	^ uniqueInstance