accessing
getAllCompanies
	| x |
	x := self companyService selectAll.
	x isNotNil
		ifTrue: [ ^ x ]
		ifFalse: [ ^ OrderedCollection new ]