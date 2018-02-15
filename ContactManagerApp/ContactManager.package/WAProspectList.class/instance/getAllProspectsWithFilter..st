accessing
getAllProspectsWithFilter: aFilter
	| x |
	x := self prospectService  selectProspectsByCompany: aFilter.
	x isNotNil
		ifTrue: [ ^ x ]
		ifFalse: [ ^ OrderedCollection new ]
	