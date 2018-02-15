accessing
reset
	self instance isNotNil
		ifTrue: [
			self instance isRunning isNil ifTrue: [ self instance isRunning: false ].
			self instance isRunning ifTrue: [ self instance stop ].
			Instance:=nil.
		]
		ifFalse: [Instance := nil ].