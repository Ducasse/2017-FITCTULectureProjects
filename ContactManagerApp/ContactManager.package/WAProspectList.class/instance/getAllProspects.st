accessing
getAllProspects
	| x |
	x := self prospectService selectAll.
	x isNotNil
		ifTrue: [ ^ x ]
		ifFalse: [ ^ OrderedCollection new ]