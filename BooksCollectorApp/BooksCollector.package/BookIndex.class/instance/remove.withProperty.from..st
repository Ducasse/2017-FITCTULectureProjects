utility
remove: aBook withProperty: aProperty from: aDict
	| aSet |
	aSet := aDict at: aProperty ifAbsent: [ ^ nil ].
	aSet remove: aBook ifAbsent: [  ].
	aSet isEmpty
		ifTrue: [ aDict removeKey: aProperty ifAbsent: [  ] ]