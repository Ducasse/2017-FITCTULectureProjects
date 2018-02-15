accessing
getAllPersons
	| x |
	x := self personService  selectAll.
	x isNotNil
		ifTrue: [ ^ x ]
		ifFalse: [ ^ OrderedCollection new ]
	