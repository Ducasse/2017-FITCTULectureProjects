accessing
getInstance
	singleton ifNil: [ singleton := self new ].
	^ singleton