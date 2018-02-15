accessing
getAllPersonsWithFilter: aFilter
	| x |
	x := self personService  selectPersonsByCompany: aFilter.
	x isNotNil
		ifTrue: [ ^ x ]
		ifFalse: [ ^ OrderedCollection new ]
	