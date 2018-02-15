registration
resolveWithName: aName
	| service |
	service := self serviceDict at: aName ifAbsent: nil.
	service isNil
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ service new ]