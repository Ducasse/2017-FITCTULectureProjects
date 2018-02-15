accessing
rebind
	prospects  := companyFilter isNotNil
		ifTrue: [ self getAllProspectsWithFilter: self companyFilter ]
		ifFalse: [ self getAllProspects ]